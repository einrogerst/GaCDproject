CodeBook
========

The original experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The original data set contains 561 features selected from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Out of those 561 features, a smaller data set containing the average of the mean and standard deviation for each measurement per subject and activity was created with the following features:

feature | description
--------|------------
activity|the activity performed by the subject during the experiment (one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING)
subject|the subject who performed the activity (from 1 to 30) 
tBodyAcc.AvgMean.X|average mean of body linear acceleration on X-axis over time
tBodyAcc.AvgMean.Y|average mean of body linear acceleration on Y-axis over time
tBodyAcc.AvgMean.Z|average mean of body linear acceleration on Z-axis over time
tBodyAcc.AvgStd.X|average standard deviation of body linear acceleration on X-axis over time
tBodyAcc.AvgStd.Y|average standard deviation of body linear acceleration on Y-axis over time
tBodyAcc.AvgStd.Z|average standard deviation of body linear acceleration on Z-axis over time
tGravityAcc.AvgMean.X|average mean of gravity linear acceleration on X-axis over time
tGravityAcc.AvgMean.Y|average mean of gravity linear acceleration on Y-axis over time
tGravityAcc.AvgMean.Z|average mean of gravity linear acceleration on Z-axis over time
tGravityAcc.AvgStd.X|average standard deviation of gravity linear acceleration on X-axis over time
tGravityAcc.AvgStd.Y|average standard deviation of gravity linear acceleration on Y-axis over time
tGravityAcc.AvgStd.Z|average standard deviation of gravity linear acceleration on Z-axis over time
tBodyAccJerk.AvgMean.X|average mean of body linear acceleration Jerk signal on X-axis over time
tBodyAccJerk.AvgMean.Y|average mean of body linear acceleration Jerk signal on Y-axis over time
tBodyAccJerk.AvgMean.Z|average mean of body linear acceleration Jerk signal on Z-axis over time
tBodyAccJerk.AvgStd.X|average standard deviation of body linear acceleration Jerk signal on X-axis over time
tBodyAccJerk.AvgStd.Y|average standard deviation of body linear acceleration Jerk signal on Y-axis over time
tBodyAccJerk.AvgStd.Z|average standard deviation of body linear acceleration Jerk signal on Z-axis over time
tBodyGyro.AvgMean.X|average mean of body angular velocity on X-axis over time
tBodyGyro.AvgMean.Y|average mean of body angular velocity on Y-axis over time
tBodyGyro.AvgMean.Z|average mean of body angular velocity on Z-axis over time
tBodyGyro.AvgStd.X|average standard deviation of body angular velocity on X-axis over time
tBodyGyro.AvgStd.Y|average standard deviation of body angular velocity on Y-axis over time
tBodyGyro.AvgStd.Z|average standard deviation of body angular velocity on Z-axis over time
tBodyGyroJerk.AvgMean.X|average mean of body angular velocity Jerk signal on X-axis over time
tBodyGyroJerk.AvgMean.Y|average mean of body angular velocity Jerk signal on Y-axis over time
tBodyGyroJerk.AvgMean.Z|average mean of body angular velocity Jerk signal on Z-axis over time
tBodyGyroJerk.AvgStd.X|average standard deviation of body angular velocity Jerk signal on X-axis over time
tBodyGyroJerk.AvgStd.Y|average standard deviation of body angular velocity Jerk signal on Y-axis over time
tBodyGyroJerk.AvgStd.Z|average standard deviation of body angular velocity Jerk signal on Z-axis over time
tBodyAccMag.AvgMean|average mean of body linear acceleration magnitude over time
tBodyAccMag.AvgStd|average standard deviation of body linear acceleration magnitude over time
tGravityAccMag.AvgMean|average mean of gravity linear acceleration magnitude over time
tGravityAccMag.AvgStd|average standard deviation of gravity linear acceleration magnitude over time
tBodyAccJerkMag.AvgMean|average mean of body linear acceleration Jerk signal magnitude over time
tBodyAccJerkMag.AvgStd|average standard deviation of body linear acceleration Jerk signal magnitude over time
tBodyGyroMag.AvgMean|average mean of body angular velocity magnitude over time
tBodyGyroMag.AvgStd|average standard deviation of body angular velocity magnitude over time
tBodyGyroJerkMag.AvgMean|average mean of body angular velocity Jerk signal magnitude over time
tBodyGyroJerkMag.AvgStd|average standard deviation of body angular velocity Jerk signal magnitude over time
fBodyAcc.AvgMean.X|average mean of body linear acceleration on X-axis frequency
fBodyAcc.AvgMean.Y|average mean of body linear acceleration on Y-axis frequency
fBodyAcc.AvgMean.Z|average mean of body linear acceleration on Z-axis frequency
fBodyAcc.AvgStd.X|average standard deviation of body linear acceleration on X-axis frequency
fBodyAcc.AvgStd.Y|average standard deviation of body linear acceleration on Y-axis frequency
fBodyAcc.AvgStd.Z|average standard deviation of body linear acceleration on Z-axis frequency
fBodyAccJerk.AvgMean.X|average mean of body linear acceleration Jerk signal on X-axis frequency
fBodyAccJerk.AvgMean.Y|average mean of body linear acceleration Jerk signal on Y-axis frequency
fBodyAccJerk.AvgMean.Z|average mean of body linear acceleration Jerk signal on Z-axis frequency
fBodyAccJerk.AvgStd.X|average standard deviation of body linear acceleration Jerk signal on X-axis frequency
fBodyAccJerk.AvgStd.Y|average standard deviation of body linear acceleration Jerk signal on Y-axis frequency
fBodyAccJerk.AvgStd.Z|average standard deviation of body linear acceleration Jerk signal on Z-axis frequency
fBodyGyro.AvgMean.X|average mean of body angular velocity on X-axis frequency
fBodyGyro.AvgMean.Y|average mean of body angular velocity on Y-axis frequency
fBodyGyro.AvgMean.Z|average mean of body angular velocity on Z-axis frequency
fBodyGyro.AvgStd.X|average standard deviation of body angular velocity on X-axis frequency
fBodyGyro.AvgStd.Y|average standard deviation of body angular velocity on Y-axis frequency
fBodyGyro.AvgStd.Z|average standard deviation of body angular velocity on Z-axis frequency
fBodyAccMag.AvgMean|average mean of body linear acceleration magnitude frequency
fBodyAccMag.AvgStd|average standard deviation of body linear acceleration magnitude frequency
fBodyAccJerkMag.AvgMean|average mean of body linear acceleration Jerk signal magnitude frequency
fBodyAccJerkMag.AvgStd|average standard deviation of body linear acceleration Jerk signal magnitude frequency
fBodyGyroMag.AvgMean|average mean of body angular velocity magnitude frequency
fBodyGyroMag.AvgStd|average standard deviation of body angular velocity magnitude frequency
fBodyGyroJerkMag.AvgMean|average mean of body angular velocity Jerk signal magnitude frequency
fBodyGyroJerkMag.AvgStd|average standard deviation of body angular velocity Jerk signal magnitude frequency