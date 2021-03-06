# Codebook
## Background
This file is a codebook describing the variables contained within the tidy dataset that was constructed as part of the solution to the Run Analysis project assigned in Week 4 of the Coursera Getting and Cleaning Data online course. The original data sets provided measures for 561 different features for each observation. Several text data files were provided from the experiment. Not all files were pertinent to the analysis. Specifically, the pertinent data files used include:

* 'features_info.txt': Shows information about the variables used on the feature vector
* 'features.txt': Lists the titles of all 561 features found in the test and training feature data sets.
* 'activity_labels.txt': Lists the six activity class labels (1, 2, ...,6) and links them with with their activity name.
* 'X_train.txt': Training set containing the feature data for 7,352 observations.
* 'y_train.txt': Contains the activity labels associated with the 7,352 feature observations in the 'X_train.txt' file.
* 'subject_train.txt': Contains the subject ID associated with the 7,352 feature observations in the 'X_train.txt' file.
* 'X_test.txt': Test set containing the feature data for 2,947 observations
* 'y_test.txt': Contains the activity labels associated with the 2,947 feature observations in the 'X_test.txt' file.
* 'subject_test.txt': Contains the subject ID associated with the 2,947 feature observations in the 'X_test.txt' file.

The focus of this project is on variables that represent a mean or standard deviation for a subset of particular features. Consequently, the 561 variables were reduced to 18 variables for both the test and training sets. Those 18 variables are defined below. In addition to the 18 feature variables, there are two factor variables, subjectID and activity. It is important to note that the feature measurements initially measured in terms of meter/sec^2 for acceleration and radians/second for angular velocity were later normalized to convert the range for each variable to [-1, 1]. Consequently, the variables below ending in _Mean or _std are dimensionless.
## List of Variables in order of the columns in which they appear
* subjectID - Identification code for subject performing the observation; possible values = 1, 2, ..., 30
* timeBodyAccel_Mean - Normalized mean of the measured component accelerations attributed to body movement at constant rate 50 Hz
* timeGravityAccel_Mean - Normalized mean of the measured component accelerations attributed to gravity at constant rate 50 Hz
* timeBodyAccelJerk_Mean - Normalized mean of the measured component accelerations attributed to body jerk at constant rate 50 Hz
* timeBodyGyro_Mean - Normalized mean of the measured angular velocity attributed to body movement at constant rate 50 Hz
* timeBodyGyroJerk_Mean - Normalized mean of the measured angular velocity attributed to body jerk at constant rate 50 Hz
* freqBodyAccel_Mean - Normalized mean of the measured component accelerations attributed to body movement after noise filtering
* freqBodyAccelJerk_Mean - Normalized mean of the measured component accelerations attributed to body jerk after noise filtering
* freqBodyGyro_Mean - Normalized mean of the measured angular velocity attributed to body movement after noise filtering
* freqBodyGyroJerk_Mean - Normalized mean of the measured angular velocity attributed to body jerk after noise filtering
* timeBodyAccel_std - Normalized standard deviation of the measured component accelerations attributed to body movement at constant rate 50 Hz
* timeGravityAccel_std - Normalized standard deviation of the measured component accelerations attributed to gravity at constant rate 50 Hz
* timeBodyAccelJerk_std - Normalized standard deviation of the measured component accelerations attributed to body jerk at constant rate 50 Hz
* timeBodyGyro_std - Normalized standard deviation of the measured angular velocity attributed to body movement at constant rate 50 Hz
* timeBodyGyroJerk_std - Normalized standard deviation of the measured angular velocity attributed to body jerk at constant rate 50 Hz
* freqBodyAccel_std - Normalized standard deviation of the measured component accelerations attributed to body movement after noise filtering
* freqBodyAccelJerk_std - Normalized standard deviation of the measured component accelerations attributed to body jerk after noise filtering
* freqBodyGyro_std - Normalized standard deviation of the measured angular velocity attributed to body movement after noise filtering
* freqBodyGyroJerk_std - Normalized standard deviation of the measured angular velocity attributed to body jerk after noise filtering
* activity - Name of activity being performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
