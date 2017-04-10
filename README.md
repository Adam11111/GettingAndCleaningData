# README for run_analysis.R

The program has the following 5 goals:

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

It is assumed that the data has already been downloaded to your working directory.

To reproduce the downloaded data see the code below:

## Download and unzip the data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(fileUrl,"./activitydata.zip")

unzip("./activitydata.zip",exdir="./activitydata")