## Stanislav O. Pogrebnyak
## 2015

## You should create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the 
##    average of each variable for each activity and each subject.


# Required packages

if(!require("data.table")){
  install.packages("data.table")
}
require("data.table")

if(!require("reshape2")){
  install.packages("reshape2")
}
require("reshape2")


projectDataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
projectDataDestFile <- "/tmp/Dataset.zip"

if( !file.exists(projectDataDestFile) ){
  download.file(projectDataUrl, projectDataDestFile, method = "curl")
}

unzip( projectDataDestFile, exdir="/tmp" )

activities <- read.table("/tmp/UCI HAR Dataset/activity_labels.txt")
features <- read.table("/tmp/UCI HAR Dataset/features.txt")

