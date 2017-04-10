###################################################################################################
## run_analysis.R
##
## Getting and Cleaning Data Course Project
##
## This program assumes the Samsung data is already in your working directory unzipped here:
##  "./activitydata/UCI HAR Dataset/"
##
## See the README.md file for the script to download and unzip the data
## See the CodeBook.md file for the data dictionary
##
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average
##    of each variable for each activity and each subject.
###################################################################################################


########################
## Load dplyr package ##
########################
library(dplyr)


###################################
## Identify mean and std columns ##
###################################
features <- read.table("./activitydata/UCI HAR Dataset/features.txt",header=FALSE,sep=" ")
mean_cols <- grep("\\-mean\\(\\)",features[,2])
std_cols <- grep("\\-std\\(\\)",features[,2])
meanstd_cols <- sort(c(mean_cols,std_cols))


##########################
## Format labels better ##
##########################
features[,2] <- gsub("\\(\\)","",features[,2])
features[,2] <- gsub("\\-","_",features[,2])
features[,2] <- gsub(",","_",features[,2])
features[,2] <- gsub("^t","Time_",features[,2])
features[,2] <- gsub("^f","Freq_",features[,2])
features[,2] <- gsub("Body","Body_",features[,2])
features[,2] <- gsub("Gravity","Grav_",features[,2])
features[,2] <- gsub("Jerk","_Jerk",features[,2])
features[,2] <- gsub("Mag","_Mag",features[,2])


##########################
## Load the data into R ##
##########################
activity_labels <- read.table("./activitydata/UCI HAR Dataset/activity_labels.txt",    header=FALSE,sep=" ",col.names=c("activity_id","activity_name"))
subject_test    <- read.table("./activitydata/UCI HAR Dataset/test/subject_test.txt",  header=FALSE,col.names="subject_id")
subject_train   <- read.table("./activitydata/UCI HAR Dataset/train/subject_train.txt",header=FALSE,col.names="subject_id")
X_test  <- read.table("./activitydata/UCI HAR Dataset/test/X_test.txt",  header=FALSE,col.names=features[,2])
X_train <- read.table("./activitydata/UCI HAR Dataset/train/X_train.txt",header=FALSE,col.names=features[,2])
y_test  <- read.table("./activitydata/UCI HAR Dataset/test/y_test.txt",  header=FALSE,col.names="activity_id")
y_train <- read.table("./activitydata/UCI HAR Dataset/train/y_train.txt",header=FALSE,col.names="activity_id")


#################################
## Bind, then merge the tables ##
#################################
test_data  <- cbind(subject_test, y_test, X_test)
train_data <- cbind(subject_train,y_train,X_train)
all_data <- rbind(train_data,test_data)
all_data <- merge(activity_labels,all_data)


###############################
## Extract only mean and std ##
###############################
meanstd_data <- all_data[,c(1:3,(3+meanstd_cols))]
# Drop the activity_id
meanstd_data <- meanstd_data[,-1]


#####################################
## Average by activity and subject ##
#####################################
meanstd_df <- tbl_df(meanstd_data)
tidy_df <- meanstd_df %>% group_by(activity_name,subject_id) %>% summarise_each(funs(mean))


###################
## Write to file ##
###################
write.table(tidy_df,"./tidy_df.txt",row.names=FALSE)
