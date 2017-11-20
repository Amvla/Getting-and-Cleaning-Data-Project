# Getting and Cleaning Data Course Project

This project is based on data collected from the accelerometers from the Samsung Galaxy S smartphone
A full description is available at the site where the data were obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## run_analysis.R
 This script does the following:
* Creates a folder called ‘dataweek4’ to store data downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Downloads accelerometer.zip and unzips data folder UCI HAR Dataset
* Merges the training and the test sets to create one data set called ‘tidydata’
* Extracts only the measurements on the mean and standard deviation for each measurement
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names
* From the data set ‘tidydata’, creates a second, independent tidy data set with the average of each variable for each activity and each subject called ‘averages’


## CodeBook.md
Code book for tidydata describes variables and summaries calculated, along with any other relevant information