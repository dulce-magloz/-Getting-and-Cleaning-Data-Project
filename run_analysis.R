## Required package
library(data.table)
library(dplyr)

## Downloads data
fileurl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('UCI HAR Dataset.zip')){
    download.file(fileurl,'./UCI HAR Dataset.zip', mode = 'wb')
    unzip("UCI HAR Dataset.zip", exdir = getwd())
}

## Loads data into data frames
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","feature"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
xTest <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$feature)
names(xTest) <- c(as.character(features$feature))
yTest <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$feature)
names(xTrain) <- c(as.character(features$feature))
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

## Merges the training and the test sets to create one data set.
trainData <- cbind(subjectTrain, yTrain, xTrain)
testData <- cbind(subjectTest, yTest, xTest)
mergeData <- rbind(trainData, testData)

## Extracts only the measurements on the mean and standard deviation for each measurement.
meanStdData <- select(mergeData, subject, code, contains("mean"), contains("std"))

## Uses descriptive activity names to name the activities in the data set
meanStdData$code <- activities[meanStdData$code, 2]

## Appropriately labels the data set with descriptive variable names.
names(meanStdData)[2] = "Activity"
names(meanStdData) <- gsub("[(][)]", "", names(meanStdData))
names(meanStdData) <- gsub("^t", "Time", names(meanStdData))
names(meanStdData) <- gsub("\\(t", "\\(Time", names(meanStdData))
names(meanStdData) <- gsub("^f", "Frequency", names(meanStdData))
names(meanStdData) <- gsub("Acc", "Accelerometer", names(meanStdData))
names(meanStdData) <- gsub("Gyro", "Gyroscope", names(meanStdData))
names(meanStdData) <- gsub("Mag", "Magnitude", names(meanStdData))
names(meanStdData) <- gsub("-mean", "_Mean", names(meanStdData))
names(meanStdData) <- gsub("-std", "_StandardDeviation", names(meanStdData))
names(meanStdData) <- gsub("-", "_", names(meanStdData))

## From the data set in step 4, creates a second, independent tidy data set with 
## the average of each variable for each activity and each subject.
tidyData <- meanStdData %>%
    group_by(subject, Activity) %>%
    summarise_all(list(mean))

## Writes the tidyData in a text file
write.table(tidyData, "tidyData.txt", row.names = FALSE)