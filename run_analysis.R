## Stanislav O. Pogrebnyak
## 2015

## You should create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the 
##    average of each variable for each activity and each subject.


## Required packages

  if(!require("data.table")){
    install.packages("data.table")
  }
  require("data.table")
  
  if(!require("reshape2")){
    install.packages("reshape2")
  }
  require("reshape2")


## Fetching DataSet
  # Data URL
  projectDataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  projectDataDestFile <- "/tmp/Dataset.zip"
  
  if( !file.exists(projectDataDestFile) ){
    download.file(projectDataUrl, projectDataDestFile, method = "curl")
  }
  unzip( projectDataDestFile, exdir="/tmp" )

## Reading lables
  activities <- read.table("/tmp/UCI HAR Dataset/activity_labels.txt")[,2]
  features <- read.table("/tmp/UCI HAR Dataset/features.txt")[,2]
  extract_features <- grepl("mean|std", features)

## Reading and Preparing Test data
  X_test <- read.table("/tmp/UCI HAR Dataset/test/X_test.txt")
  y_test <- read.table("/tmp/UCI HAR Dataset/test/y_test.txt")
  subject_test <- read.table("/tmp/UCI HAR Dataset/test/subject_test.txt")
  names(X_test) = features
  X_test <- X_test[,extract_features]
  
  # Load activity labels
  y_test[,2] = activities[y_test[,1]]
  names(y_test) = c("Activity_ID", "Activity_Label")
  names(subject_test) = "Subject"
  
  # Bind data
  test_data <- cbind(as.data.table(subject_test), y_test, X_test)

## Reading and Preparing train data
  X_train <- read.table("/tmp/UCI HAR Dataset/train/X_train.txt")
  y_train <- read.table("/tmp/UCI HAR Dataset/train/y_train.txt")
  subject_train <- read.table("/tmp/UCI HAR Dataset/train/subject_train.txt")
  names(X_train) = features
  X_train = X_train[,extract_features]
  
  # Load activity data
  y_train[,2] = activities[y_train[,1]]
  names(y_train) = c("Activity_ID", "Activity_Label")
  names(subject_train) = "Subject"
  
  # Bind data
  train_data <- cbind(as.data.table(subject_train), y_train, X_train)

  # Merge test and train data
  data = rbind(test_data, train_data)

## Preparing output
  id_labels   = c("Subject", "Activity_ID", "Activity_Label")
  data_labels = setdiff(colnames(data), id_labels)
  melt_data      = melt(data, id = id_labels, measure.vars = data_labels)
  
  # Apply mean function to dataset using dcast function
  tidy_data   = dcast(melt_data, Subject + Activity_Label ~ variable, mean)
  
  write.table(tidy_data, file = "/tmp/tidy_data.txt",  row.names = FALSE)

# EOF