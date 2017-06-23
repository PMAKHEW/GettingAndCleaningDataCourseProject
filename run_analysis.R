##Final assignment Coursera Data Science Module 3

##The R code will perform the following steps after downloading data, reading data and assigning column names:

##1.Merges the training and the test sets to create one data set.
##2.Extracts only the measurements on the mean and standard deviation for each measurement.
##3.Uses descriptive activity names to name the activities in the data set.
##4.Appropriately labels the data set with descriptive variable names.
##5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Set wd to folder with data:
setwd("C:/Users/lp070/Documents/")

##Read training and testing files:
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)

##Read features file:
features <- read.table('./UCI HAR Dataset/features.txt', header=FALSE)

##Read activity labels:
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt', header=FALSE)

##Assign column names:
colnames(subject_train) <- "subjectId"
colnames(x_train) <- features[,2] 
colnames(y_train) <-"activityId"
colnames(subject_test) <- "subjectId"
colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(activity_labels) <- c("activityId","activityType")

##1.Merge the training and the test sets to create one data set:

bind_train <- cbind(y_train, subject_train, x_train)
bind_test <- cbind(y_test, subject_test, x_test)
data_all <- rbind(bind_train, bind_test)

##2.Extract only the measurements on the mean and standard deviation for each measurement:

##Define column names:
colNames <- colnames(data_all)

##Create a vector which selects ID, mean and std:
meanstd <- (grepl("activityId" , colNames) | 
              grepl("subjectId" , colNames) | 
                grepl("mean.." , colNames) |  
                  grepl("std.." , colNames) 
)

##Create a subset from all data:
data_meanstd <- data_all[ , meanstd == TRUE]

##3.Use descriptive activity names to name the activities in the data set.

data_meanstd_labels <- merge(data_meanstd, activity_labels,
                            by='activityId',
                            all.x=TRUE)

##4.Appropriately label the data set with descriptive variable names:

##For later use:

library(plyr)

##Remove parentheses:

names(data_meanstd_labels) <- gsub("\\(|\\)", "", names(data_meanstd_labels), perl = TRUE)

##Make variable names:

names(data_meanstd_labels) <- make.names(names(data_meanstd_labels))

##Add descriptive variable names:

names(data_meanstd_labels) <- gsub("Acc", "Acceleration", names(data_meanstd_labels))
names(data_meanstd_labels) <- gsub("^t", "Time", names(data_meanstd_labels))
names(data_meanstd_labels) <- gsub("^f", "Frequency", names(data_meanstd_labels))
names(data_meanstd_labels) <- gsub("BodyBody", "Body", names(data_meanstd_labels))
names(data_meanstd_labels) <- gsub("mean", "Mean", names(data_meanstd_labels))
names(data_meanstd_labels) <- gsub("std", "StandardDeviation", names(data_meanstd_labels))
names(data_meanstd_labels) <- gsub("Freq", "Frequency", names(data_meanstd_labels))
names(data_meanstd_labels) <- gsub("Mag", "Magnitude", names(data_meanstd_labels))

##5.From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject:

tidydata_average <- ddply(data_meanstd_labels, c("subjectId","activityId"), numcolwise(mean))
write.table(tidydata_average,file="tidy_data.txt", row.name=FALSE)