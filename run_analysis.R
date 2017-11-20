## Script run_analysis.R
## 
## 1. Merges the training and the test sets to create one data set
## 2. Extracts only the measurements on the mean and standard deviation for each measurement
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names
## 5. From the data set (named "tidydata") in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject (named "averages")


## Check for dplyr and downloader packages
if(!require(downloader)) {
  install.packages("downloader") 
  require(downloader)
}

if(!require(dplyr)) {
  install.packages("dplyr")
  require(dplyr)
}

## Check if destination folder exists. If not, create destination folder dataweek4
if(!file.exists("./dataweek4")) {dir.create("./dataweek4")}

## Download zipped data files into dataweek4 folder
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(fileUrl, dest="./dataweek4/accelerometer.zip")

## Unzip data files
unzip("./dataweek4/accelerometer.zip", exdir = "./dataweek4")

## Load raw data files
xtest <- read.table("./dataweek4/UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./dataweek4/UCI HAR Dataset/test/y_test.txt")
subjecttest <- read.table("./dataweek4/UCI HAR Dataset/test/subject_test.txt")
xtrain <- read.table("./dataweek4/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./dataweek4/UCI HAR Dataset/train/y_train.txt")
subjecttrain <- read.table("./dataweek4/UCI HAR Dataset/train/subject_train.txt")
activitylabels <- read.table("./dataweek4/UCI HAR Dataset/activity_labels.txt")
features <- read.table("./dataweek4/UCI HAR Dataset/features.txt")

## Combine train and test files and name columns after features
tidydata <- rbind(xtest, xtrain)
names(tidydata) <- features$V2

## Extract only the measurements on the mean and standard deviation for each measurement
col_subset <- grep("mean|std", features[,2])
tidydata <- tidydata[,col_subset]

## Add subject and activity identifiers
subject <- rbind(subjecttest, subjecttrain)
activity <- rbind(ytest, ytrain)
tidydata$subject <- subject$V1
tidydata$activity <- activity$V1

## Add descriptive activity names
activitylabels$V2 <- tolower(activitylabels$V2)
tidydata$activity <- as.factor(tidydata$activity)
levels(tidydata$activity) <- activitylabels$V2
names(tidydata) <- gsub("-", "", names(tidydata))
names(tidydata) <- gsub("\\()", "", names(tidydata))

## Create a second, independent tidy data set 
##with the average of each variable for each activity and each subject
averages <- tidydata %>% group_by(subject, activity) %>% summarise_all(funs(mean))
