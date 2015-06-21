ReadMe
======

These files contain a tidy data set created from the Human Activity Recognition Using Smartphones Data Set (link below). R script run_analysis.R uses the original data set to create a cleaner, smaller, and well described data set. The resulting data set contains the average of the mean and standard deviation for each measurement per subject and activity.

Original data set:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

For more information on the original data set:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

**How it works**

The analysis performed by run_analysis.R starts by checking if the original data file exists in the current folder; if it does not, the script automatically downloads it using 'curl'. The test and training sets are then unziped and merged, including data on the subjects, measurements and, activities. After that, the srcipt extracts only the measurements on the mean and standard deviation for each measurement. The srcipt then gives the data appropriate activity names and variable labels. Finally, the script calculates the average of each variable for each activity and each subject using functions provided by package 'dplyr'. The result can be optionally saved into file "tidy.txt," which can be found in this repo, by uncommenting the respective line in the code.

**Files in this repo**

File Name | File Description
----------|-----------------
README.md | this file
[CodeBook.md](./CodeBook.md) | a code book that describes the data set and its variables
run_analysis.R | an R script that performs the analysis 
tidy.txt | the data set that results from the analysis
feature_description.R | an auxiliar script that optionally creates meaningful feature descriptions