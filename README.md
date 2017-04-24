# Run_Analysis
## Project Background
The purpose of this project is to demonstrate an ability to collect, work with, and clean a data set. It is a requirement for completion of the Coursera Getting and Cleaning data course. It uses data compiled during a Human Activity Recognition experiment that built recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
## Experiment Background
From the UCI Machine Learning Repository website describing the experiment:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
## Experiment Data
Several text data files were provided from the experiment. Not all files were pertinent to the analysis. Specifically, the data files used include:
* 'features_info.txt': Shows information about the variables used on the feature vector
* 'features.txt': Lists the titles of all 561 features found in the test and training feature data sets.
* 'activity_labels.txt': Lists the six activity class labels (1, 2, ...,6) and links them with with their activity name.
* 'X_train.txt': Training set containing the feature data for 7,352 observations.
* 'y_train.txt': Contains the activity labels associated with the 7,352 feature observations in the 'X_train.txt' file.
* 'subject_train.txt': Contains the subject ID associated with the 7,352 feature observations in the 'X_train.txt' file.
* 'X_test.txt': Test set containing the feature data for 2,947 observations
* 'y_test.txt': Contains the activity labels associated with the 2,947 feature observations in the 'X_test.txt' file.
* 'subject_test.txt': Contains the subject ID associated with the 2,947 feature observations in the 'X_test.txt' file.
## Goals of the analysis
As specified in the project assignment instructions, these are the project objectives:
* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement.
* Use descriptive activity names to name the activities in the data set
* Appropriately label the data set with descriptive variable names.
* From the data set in the previous step, create a second, independent tidy data set with the average of each variable for each activity and each subject.
## Analysis Plan and Procedures
The analysis plan will include the following steps:


## Repository Contents
This repository contains files that make up the solution to the Run Analysis project. Specifically, you will find:
* Run_Analysis.R - an R script file containing all commands used to transform the data
* Codebook.md - a markdown file that lists and describes all variables contained within the final run analysis data file
* This Readme.md file that describes the experiment and the steps to create a resulting tidy data file.
