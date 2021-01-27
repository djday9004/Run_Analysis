## Run_Analysis.R
## New Edit Line
## Constructed by Dennis Day in order to meet the requirements of the Data Science Specialization - Getting
## and Cleaning Data course end of course project.
## The Readme.md and Codebook.md files also found in my Run_Analysis Github repository provide further details on the experiment that
## produced that data to be analyzed and the meaning of each of the selected variables.
##
##Read in the list of activity codes and titles for the six activities observed during the experiment

activity_labels <- read.table("./Data/activity_labels.txt")

##
## Assign "activityCode" and "activity" as column names to the activity_labels data frame; dim = (6,2)

names(activity_labels) <- c("activityCode", "activity")

##
## Read in the list of titles for the 561 features measured during the experiment; dim = (561,1)

features <- read.table("./Data/features.txt")

##
## For the 2,947 observations contained in the test data set, read in the associated subject ID; dim = (2947,1)

subject_test <- read.table("./Data/subject_test.txt")

##
## For the 2,947 observations contained in the test data set, read in the measurements for the 561 variables; dim = (2947, 561)

features_test <- read.table("./Data/X_test.txt")

##
## For the 2,947 observations contained in the test data set, read in the associated activity code; dim = (2947,1)

activity_test <- read.table("./Data/y_test.txt")

##
## For the 7,352 observations contained in the training data set, read in the associated subject ID; dim = (7352,1)

subject_train <- read.table("./Data/subject_train.txt")
##
## For the 7,352 observations contained in the training data set, read in the measurements for the 561 variables; dim = (7352, 561)
features_train <- read.table("./Data/X_train.txt")

##
## For the 7,352 observations contained in the training data set, read in the associated activity code; dim = (7352,1)

activity_train <- read.table("./Data/y_train.txt")
##
## Assign column names to the the "subject" data frames for the test and training data

names(subject_test) <- "subjectID"
names(subject_train) <- "subjectID"

##
## Assign column names to the the "activity" data frames for the test and training data

names(activity_test) <- "activityCode"
names(activity_train) <- "activityCode"

##
## Assign column names to the the "feature" data frames for the test and training data using the provided features list

names(features_test) <- features[,2]
names(features_train) <- features[,2]

##
## For both the test and training features data frames, subset the data fram by choosing columns with titles that end in "mean()" or "std()"
## This results in 18 total columns of interest. First, identify the columns of interest.

select_columns_test <- c(grep("mean\\(\\)$", names(features_test)),grep("std\\(\\)$", names(features_test)))
select_columns_train <- c(grep("mean\\(\\)$", names(features_train)),grep("std\\(\\)$", names(features_train)))

##
## Next, create a new data frame for test and training containing only the 18 columns of interest

select_features_test <- features_test[,select_columns_test] ## dim = (2947, 18)
select_features_train <- features_train[,select_columns_train] ## dim = (7352, 18)

##
## For the test and training features data frames containing only the selected  feature columns, 
## append the subject and activity data frames to the front

complete_test <- cbind(subject_test, activity_test, select_features_test) ## dim = (2947, 20)
complete_train <- cbind(subject_train, activity_train, select_features_train) ## dim = (7352, 20)

##
## Combine the resulting complete test and training data frames into a single data frame

combined <- rbind(complete_train, complete_test) ## dim = (10299, 20)

##
## Merge the combined data frame with the activity_labels data fram so that the activity title for each observation
## can be included. Resulting data fram has dim = (10299, 21)

complete_data <- merge(combined, activity_labels, by.x = "activityCode", by.y = "activityCode")

##
## Remove the "activityCode" column (1st column) from the data frame since it is redundant with the newly added "activity" column
## Resulting data frame called final_data is back to dim = (10299, 20)

final_data <- complete_data[,-1]

##
## Change the variable names to something more descriprtive

complete_names <- c("subjectID","timeBodyAccel_Mean","timeGravityAccel_Mean", "timeBodyAccelJerk_Mean",
                    "timeGyro_Mean","timeBodyGyroJerk_Mean","freqBodyAccel_Mean", "freqBodyAccelJerk_Mean", 
                    "freqBodyGyro_Mean", "freqBodyGyroJerk_Mean","timeBodyAccel_std", "timeGravityAccel_std", 
                    "timeBodyAccelJerk_std", "timeGyro_std", "timeBodyGyroJerk_std","freqBodyAccel_std", 
                    "freqBodyAccelJerk_std", "freqBodyGyro_std", "freqBodyGyroJerk_std", "activity")
names(final_data) <- complete_names

##
## Compute the average for each feature variable based on the subject_ID and activity
## using the melt() and dcast() functions

final_melt <- melt(final_data, id = c("subjectID", "activity"), 
                   measure.vars = complete_names[c(-1, -20)])
##
final_cast <- dcast(final_melt, subjectID + activity  ~ variable, mean)
