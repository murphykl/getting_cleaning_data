# Description of Data Collection and Analysis
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Data handling for this sub-analysis
* Test and training datasets were compiled with subject and activity information appended to the raw dataset.
* From each of the test and training datasets, the mean and standard deviation values were extracted for each of the metrics described above in the Data Collection and Analysis section.
* The test and training sets were then merged. 
* The merged file is output as "fulldataset.txt"
* The data were then summarized across observations by activity and subject by calculating the means of the mean and standard deviation columns extracted above. 
* The summarized, tidy dataset is output as "testtrain.txt", which contains a row for each activity for each subject and the mean value for each metric across each of the three dimensions and the mean of the standard deviation calculated for each of those metrics for each observation.

# **Code dictionary for traintext.txt:** 
###note that the column names for fulldataset.txt are similar, but the data are not summarized and thus represent all provided observations for the respective variable
* subject: the id of the human subject
* activityid: the activity described by the data in the following columns

## Each of the following variables has an entry for each of the 3 dimensions in space (X, Y, Z)
* tBodyAcc-mean(): mean normalized body acceleration in the X, Y, and Z planes for the activity described in the activityid column
* tBodyAcc-std(): mean standard deviation of body acceleration in the X, Y, and Z planes
* tGravityAcc-mean(): mean normalized gravity acceleration
* tGravityAcc-std(): mean standard deviation of gravity acceleration 
* tBodyAccJerk-mean(): mean normalized body jerk
* tBodyAccJerk-std(): mean standard deviation of body jerk 
* tBodyGyro-mean(): mean normalized gyroscopic movement of the body 
* BodyGyro-std(): mean standard deviation of body gyroscopic movement 
* tBodyGyroJerk-mean(): mean normalized gyroscopic jerk movment
* tBodyGyroJerk-std(): mean standard deviation of gyroscopic jerk tBodyAccMag-mean(): mean normalized magnitude of body acceleration 
* tBodyAccMag-std(): mean standard deviation of body acceleration magnitude
* tGravityAccMag-mean(): mean normalized magnitude of gravity acceleration
* tGravityAccMag-std(): mean standard deviation of gravity acceleration
* tBodyAccJerkMag-mean(): mean normalized body acceleration jerk magnitude
* tBodyAccJerkMag-std(): mean standard deviation of body acceleration jerk
* tBodyGyroMag-mean(): mean normalized gyroscopic movement magnitude tBodyGyroMag-std(): mean standard deviation of body gyroscopic movement
* tBodyGyroJerkMag-mean(): mean normalized body gyroscopic jerk magnitude 
* tBodyGyroJerkMag-std(): mean standard deviation of body gyroscopic jerk magnitude
* fBodyAcc-mean(): mean transformed body acceleration
* fBodyAcc-std():  mean standard deviation of transformed body acceleration
* fBodyAccJerk-mean(): mean transformed body acceleration due to jerk
* fBodyAccJerk-std(): mean standard deviation of transformed body acceleration jerk
* fBodyGyro-mean(): mean transformed body gyroscopic movement
* fBodyGyro-std(): mean standard deviation of transformed body gyroscopic movement
* fBodyAccMag-mean(): mean transformed magnitude of body acceleration
* fBodyAccMag-std(): mean standard deviation of transformed body acceleration magnitude
* fBodyBodyAccJerkMag-mean(): mean transformed body acceleration due to jerk
* fBodyBodyAccJerkMag-std(): mean standard deviation of transformed body acceleration due to jerk
* fBodyBodyGyroMag-mean(): mean transformed magnitude of body gyroscopic movement
* fBodyBodyGyroMag-std(): mean standard deviation of transformed magnitude of body gyroscopic movement
* fBodyBodyGyroJerkMag-mean(): mean transformed magnitude of jerk gyroscopic movement
* fBodyBodyGyroJerkMag-std(): mean standard deviation of  transformed magnitude of jerk gyroscopic movement
