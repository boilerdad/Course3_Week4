# Codebook - tidyDataset.txt

### Based on:
-------------------------------------------------------------
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear 
acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the 
data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected 
for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width 
sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational 
and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
See 'features_info.txt' for more details. 
------------------------------------------------------------------

This dataset contains 180 observations on 86 measurements taken from a smartphone. 
There are 30 participants in the study, and each are measured on 6 different activities.

### The variables are:


Variable Name				Description
-------------				-----------				
subjectnumber				The subject number of the participant from 1 to 30	
activity				The activity being measured	1 WALKING
					as character data		2 WALKING_UPSTAIRS
									3 WALKING_DOWNSTAIRS
									4 SITTING
									5 STANDING
									6 LAYING
tBodyAcc.mean...X			Mean of means of time-based Measurement on X-axis (all subsequent data are means of normalized data from -1.0 to +1.0)		
tBodyAcc.mean...Y			Mean of means  of time-based Measurement on Y-axis		
tBodyAcc.mean...Z			Mean of means  of time-based Measurement on Z-axis		
tBodyAcc.std...X			Mean of standard deviations of time-based Measurement on X-axis		
tBodyAcc.std...Y			Mean of standard deviations  of time-based Measurement on Y-axis		
tBodyAcc.std...Z			Mean of standard deviations  of time-based Measurement on Z-axis		
tGravityAcc.mean...X			Mean of means of time-based Measurement on X-axis		
tGravityAcc.mean...Y			Mean of means  of time-based Measurement on Y-axis		
tGravityAcc.mean...Z			Mean of means  of time-based Measurement on Z-axis		
tGravityAcc.std...X			Mean of standard deviations of time-based Measurement on X-axis		
tGravityAcc.std...Y			Mean of standard deviations  of time-based Measurement on Y-axis		
tGravityAcc.std...Z			Mean of standard deviations  of time-based Measurement on Z-axis		
tBodyAccJerk.mean...X			Mean of means of time-based Measurement on X-axis		
tBodyAccJerk.mean...Y			Mean of means  of time-based Measurement on Y-axis		
tBodyAccJerk.mean...Z			Mean of means  of time-based Measurement on Z-axis		
tBodyAccJerk.std...X			Mean of standard deviations of time-based Measurement on X-axis		
tBodyAccJerk.std...Y			Mean of standard deviations  of time-based Measurement on Y-axis		
tBodyAccJerk.std...Z			Mean of standard deviations  of time-based Measurement on Z-axis		
tBodyGyro.mean...X			Mean of means of time-based Measurement on X-axis		
tBodyGyro.mean...Y			Mean of means  of time-based Measurement on Y-axis		
tBodyGyro.mean...Z			Mean of means  of time-based Measurement on Z-axis		
tBodyGyro.std...X			Mean of standard deviations of time-based Measurement on X-axis		
tBodyGyro.std...Y			Mean of standard deviations  of time-based Measurement on Y-axis		
tBodyGyro.std...Z			Mean of standard deviations  of time-based Measurement on Z-axis		
tBodyGyroJerk.mean...X			Mean of means of time-based Measurement on X-axis		
tBodyGyroJerk.mean...Y			Mean of means  of time-based Measurement on Y-axis		
tBodyGyroJerk.mean...Z			Mean of means  of time-based Measurement on Z-axis		
tBodyGyroJerk.std...X			Mean of standard deviations of time-based Measurement on X-axis		
tBodyGyroJerk.std...Y			Mean of standard deviations  of time-based Measurement on Y-axis		
tBodyGyroJerk.std...Z			Mean of standard deviations  of time-based Measurement on Z-axis		
tBodyAccMag.mean..			Mean of means of time-based Measurement on all axis		
tBodyAccMag.std..			Mean of the standard deviations of means of time-based Measurement on all axis		
tGravityAccMag.mean..			Mean of means of time-based Measurement on all axis		
tGravityAccMag.std..			Mean of the standard deviations of means of time-based Measurement on all axis		
tBodyAccJerkMag.mean..			Mean of means of time-based Measurement on all axis		
tBodyAccJerkMag.std..			Mean of the standard deviations of means of time-based Measurement on all axis		
tBodyGyroMag.mean..			Mean of means of time-based Measurement on all axis		
tBodyGyroMag.std..			Mean of the standard deviations of means of time-based Measurement on all axis		
tBodyGyroJerkMag.mean..			Mean of means of time-based Measurement on all axis		
tBodyGyroJerkMag.std..			Mean of the standard deviations of means of time-based Measurement on all axis		
fBodyAcc.mean...X			Mean of means of FFT-based Measurement on X-axis		
fBodyAcc.mean...Y			Mean of means  of FFT-based Measurement on Y-axis		
fBodyAcc.mean...Z			Mean of means  of FFT-based Measurement on Z-axis		
fBodyAcc.std...X			Mean of standard deviations of FFT-based Measurement on X-axis		
fBodyAcc.std...Y			Mean of standard deviations  of FFT-based Measurement on Y-axis		
fBodyAcc.std...Z			Mean of standard deviations  of FFT-based Measurement on Z-axis		
fBodyAcc.meanFreq...X			Mean of means of FFT-based Measurement on X-axis		
fBodyAcc.meanFreq...Y			Mean of means  of FFT-based Measurement on Y-axis		
fBodyAcc.meanFreq...Z			Mean of means  of FFT-based Measurement on Z-axis		
fBodyAccJerk.mean...X			Mean of standard deviations of FFT-based Measurement on X-axis		
fBodyAccJerk.mean...Y			Mean of standard deviations  of FFT-based Measurement on Y-axis		
fBodyAccJerk.mean...Z			Mean of standard deviations  of FFT-based Measurement on Z-axis		
fBodyAccJerk.std...X			Mean of means of FFT-based Measurement on X-axis		
fBodyAccJerk.std...Y			Mean of means  of FFT-based Measurement on Y-axis		
fBodyAccJerk.std...Z			Mean of means  of FFT-based Measurement on Z-axis		
fBodyAccJerk.meanFreq...X		Mean of standard deviations of FFT-based Measurement on X-axis		
fBodyAccJerk.meanFreq...Y		Mean of standard deviations  of FFT-based Measurement on Y-axis		
fBodyAccJerk.meanFreq...Z		Mean of standard deviations  of FFT-based Measurement on Z-axis		
fBodyGyro.mean...X			Mean of means of FFT-based Measurement on X-axis		
fBodyGyro.mean...Y			Mean of means  of FFT-based Measurement on Y-axis		
fBodyGyro.mean...Z			Mean of means  of FFT-based Measurement on Z-axis		
fBodyGyro.std...X			Mean of standard deviations of FFT-based Measurement on X-axis		
fBodyGyro.std...Y			Mean of standard deviations  of FFT-based Measurement on Y-axis		
fBodyGyro.std...Z			Mean of standard deviations  of FFT-based Measurement on Z-axis		
fBodyGyro.meanFreq...X			Mean of means of FFT-based Measurement on X-axis		
fBodyGyro.meanFreq...Y			Mean of means  of FFT-based Measurement on Y-axis		
fBodyGyro.meanFreq...Z			Mean of means  of FFT-based Measurement on Z-axis		
fBodyAccMag.mean..			Mean of means  of FFT-based Measurement on all axes		
fBodyAccMag.std..			Mean of the standard deviations of FFT-based Measurement on Z-axis		
fBodyAccMag.meanFreq..			Mean of means  of FFT-based Measurement on all axes		
fBodyBodyAccJerkMag.mean..		Mean of means  of FFT-based Measurement on all axes		
fBodyBodyAccJerkMag.std..		Mean of the standard deviations of FFT-based Measurement on Z-axis		
fBodyBodyAccJerkMag.meanFreq..		Mean of the standard deviations of FFT-based Measurement on Z-axis		
fBodyBodyGyroMag.mean..			Mean of means  of FFT-based Measurement on all axes		
fBodyBodyGyroMag.std..			Mean of the standard deviations of FFT-based Measurement on Z-axis		
fBodyBodyGyroMag.meanFreq..		Mean of standard deviations of FFT-based Measurement on X-axis		
fBodyBodyGyroJerkMag.mean..		Mean of means  of FFT-based Measurement on all axes		
fBodyBodyGyroJerkMag.std..		Mean of the standard deviations of FFT-based Measurement on Z-axis		
fBodyBodyGyroJerkMag.meanFreq..		Mean of means of FFT-based Measurement on X-axis		
angle.tBodyAccMean.gravity.		Mean of all means for time-based measures		
angle.tBodyAccJerkMean..gravityMean.	Mean of all means for time-based measures		
angle.tBodyGyroMean.gravityMean.	Mean of all means for time-based measures		
angle.tBodyGyroJerkMean.gravityMean.	Mean of all means for time-based measures		
angle.X.gravityMean.			Mean of all means for X-axis		
angle.Y.gravityMean.			Mean of all means for Y-axis		
angle.Z.gravityMean.			Mean of all means for Y-axis		

