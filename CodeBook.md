# Codebook

## Input data:

Main source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Archive content:

    ├── README.txt
    ├── activity_labels.txt
    ├── features.txt
    ├── features_info.txt
    ├── test
    │   ├── Inertial Signals
    │   │   ├── body_acc_x_test.txt
    │   │   ├── body_acc_y_test.txt
    │   │   ├── body_acc_z_test.txt
    │   │   ├── body_gyro_x_test.txt
    │   │   ├── body_gyro_y_test.txt
    │   │   ├── body_gyro_z_test.txt
    │   │   ├── total_acc_x_test.txt
    │   │   ├── total_acc_y_test.txt
    │   │   └── total_acc_z_test.txt
    │   ├── X_test.txt
    │   ├── subject_test.txt
    │   └── y_test.txt
    └── train
        ├── Inertial Signals
        │   ├── body_acc_x_train.txt
        │   ├── body_acc_y_train.txt
        │   ├── body_acc_z_train.txt
        │   ├── body_gyro_x_train.txt
        │   ├── body_gyro_y_train.txt
        │   ├── body_gyro_z_train.txt
        │   ├── total_acc_x_train.txt
        │   ├── total_acc_y_train.txt
        │   └── total_acc_z_train.txt
        ├── X_train.txt
        ├── subject_train.txt
        └── y_train.txt

## Process description

* Fetching data from web
* Unpacking
* Creating sets of labels 
* Loading training and test data
* Merging training and test data
* Exporting data to txt file

## Output file: tidy_data.txt

### Generated file columns

"Subject" 

"Activity_Label" 

"tBodyAcc-mean()-X" 

"tBodyAcc-mean()-Y" 

"tBodyAcc-mean()-Z"

"tBodyAcc-std()-X" 

"tBodyAcc-std()-Y" 

"tBodyAcc-std()-Z" 

"tGravityAcc-mean()-X" 

"tGravityAcc-mean()-Y" 

"tGravityAcc-mean()-Z"

"tGravityAcc-std()-X" 

"tGravityAcc-std()-Y" 

"tGravityAcc-std()-Z" 

"tBodyAccJerk-mean()-X" 

"tBodyAccJerk-mean()-Y"

"tBodyAccJerk-mean()-Z"

"tBodyAccJerk-std()-X"

"tBodyAccJerk-std()-Y"

"tBodyAccJerk-std()-Z"

"tBodyGyro-mean()-X"

"tBodyGyro-mean()-Y" 

"tBodyGyro-mean()-Z" 

"tBodyGyro-std()-X" 

"tBodyGyro-std()-Y" 

"tBodyGyro-std()-Z"

"tBodyGyroJerk-mean()-X"

"tBodyGyroJerk-mean()-Y" 

"tBodyGyroJerk-mean()-Z" 

"tBodyGyroJerk-std()-X"

"tBodyGyroJerk-std()-Y"

"tBodyGyroJerk-std()-Z" 

"tBodyAccMag-mean()"

"tBodyAccMag-std()" 

"tGravityAccMag-mean()" 

"tGravityAccMag-std()" 

"tBodyAccJerkMag-mean()" 

"tBodyAccJerkMag-std()" 

"tBodyGyroMag-mean()" 

"tBodyGyroMag-std()"

"tBodyGyroJerkMag-mean()"

"tBodyGyroJerkMag-std()" 

"fBodyAcc-mean()-X"

"fBodyAcc-mean()-Y" 

"fBodyAcc-mean()-Z" 

"fBodyAcc-std()-X" 

"fBodyAcc-std()-Y"

"fBodyAcc-std()-Z" 

"fBodyAcc-meanFreq()-X"

"fBodyAcc-meanFreq()-Y"

"fBodyAcc-meanFreq()-Z" 

"fBodyAccJerk-mean()-X" 

"fBodyAccJerk-mean()-Y" 

"fBodyAccJerk-mean()-Z" 

"fBodyAccJerk-std()-X" 

"fBodyAccJerk-std()-Y"

"fBodyAccJerk-std()-Z" 

"fBodyAccJerk-meanFreq()-X"

"fBodyAccJerk-meanFreq()-Y" 

"fBodyAccJerk-meanFreq()-Z" 

"fBodyGyro-mean()-X"

"fBodyGyro-mean()-Y" 

"fBodyGyro-mean()-Z" 

"fBodyGyro-std()-X" 

"fBodyGyro-std()-Y"

"fBodyGyro-std()-Z"

"fBodyGyro-meanFreq()-X"

"fBodyGyro-meanFreq()-Y" 

"fBodyGyro-meanFreq()-Z" 

"fBodyAccMag-mean()"

"fBodyAccMag-std()"

"fBodyAccMag-meanFreq()"

"fBodyBodyAccJerkMag-mean()" 

"fBodyBodyAccJerkMag-std()"

"fBodyBodyAccJerkMag-meanFreq()"

"fBodyBodyGyroMag-mean()"

"fBodyBodyGyroMag-std()" 

"fBodyBodyGyroMag-meanFreq()"

"fBodyBodyGyroJerkMag-mean()" 

"fBodyBodyGyroJerkMag-std()"

"fBodyBodyGyroJerkMag-meanFreq()"