# Load required packages
library(reshape2)
library(dplyr)

filename <- "samsung_galaxyS_dataset.zip"

# Download and unzip the dataset if not already done so:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="wininet", mode = "wb")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Load activity labels + features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

# Extract only the data on mean and standard deviation from features
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
featuresWanted.names <- features[featuresWanted,2]
featuresWanted.names = gsub('-mean', 'Mean', featuresWanted.names)
featuresWanted.names = gsub('-std', 'Std', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)


# Load the datasets (training and testing) and variables on selected features (mean and standard deviation) only
train <- select(read.table("UCI HAR Dataset/train/X_train.txt"), featuresWanted)
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- select(read.table("UCI HAR Dataset/test/X_test.txt"), featuresWanted)
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# Merge datasets and add labels to column names
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", featuresWanted.names)

# Turn activities & subjects into factors and give labels to the activities
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

# Melt and reshape the dataset to get the average of each variable corrresponding to each activity and each subject
allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

write.table(allData.mean, "tidydata.txt", row.names = FALSE, quote = FALSE)