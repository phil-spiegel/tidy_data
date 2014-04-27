## Code Book

This data was initially collected by:

Source:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit√  degli Studi di Genova, Genoa I-16145, Italy.
activityrecognition '@' smartlab.ws
www.smartlab.ws


More information on the raw data/source can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#### Description

The data pertains to a trial for wearable technology.  30 Subjects were brought in to perform 6 different activities, and a series of measurements were made from a device being worn.  

#### Formation of the dataset

Initially there were the following data sets from this collection:

X_test, X_train - containing the unlabeled measurements
Y_test, Y_train - containing the unlabeled activity being performed
Subject_test, Subject_train - containing the subject of each observation
Features - containing the labels of each measurement in the X_test, X_train files
Activity_Labels - containing the labels of each activity in the Y_test, Y_train files


For this study, only the mean and standard deviation measurements from X were necessary.  Only Features with "mean()" or "std()" in their title/description were included.


The aggregation of data was to combine the X, Y, and Subject Test files and then the X, Y, and Subject Train files.  After this, test and train were appended to create one mass data set.

Finally, all of the observations were averaged together so each combination of Subject and Activity had the mean for each value being measured.

The code run_analysis.R will produce a file tidy_data.txt.  This is a tab delimited file with labels.

The columns in this data file are below.

 [1] "Subject"                     "ActivityNumber"             
 [3] "ActivityName"                "tBodyAcc-mean()-X"          
 [5] "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"          
 [7] "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"           
 [9] "tBodyAcc-std()-Z"            "tGravityAcc-mean()-X"       
[11] "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
[13] "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"        
[15] "tGravityAcc-std()-Z"         "tBodyAccJerk-mean()-X"      
[17] "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"      
[19] "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"       
[21] "tBodyAccJerk-std()-Z"        "tBodyGyro-mean()-X"         
[23] "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[25] "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"          
[27] "tBodyGyro-std()-Z"           "tBodyGyroJerk-mean()-X"     
[29] "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"     
[31] "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"      
[33] "tBodyGyroJerk-std()-Z"       "tBodyAccMag-mean()"         
[35] "tBodyAccMag-std()"           "tGravityAccMag-mean()"      
[37] "tGravityAccMag-std()"        "tBodyAccJerkMag-mean()"     
[39] "tBodyAccJerkMag-std()"       "tBodyGyroMag-mean()"        
[41] "tBodyGyroMag-std()"          "tBodyGyroJerkMag-mean()"    
[43] "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"          
[45] "fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"          
[47] "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"           
[49] "fBodyAcc-std()-Z"            "fBodyAccJerk-mean()-X"      
[51] "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"      
[53] "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
[55] "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"         
[57] "fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"         
[59] "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"          
[61] "fBodyGyro-std()-Z"           "fBodyAccMag-mean()"         
[63] "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-mean()" 
[65] "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-mean()"    
[67] "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()"
[69] "fBodyBodyGyroJerkMag-std()" 
