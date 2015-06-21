# if data file is not found in the local folder, download it
if (!file.exists("getdata_projectfiles_UCI HAR Dataset.zip"))
  download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
                "getdata_projectfiles_UCI HAR Dataset.zip", method = "curl")

# unzip and read the test data
# subjects
test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", 
                       "UCI HAR Dataset/test/subject_test.txt"),
                   col.names = "subject")
# activities
test <- cbind(test, read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", 
                                   "UCI HAR Dataset/test/y_test.txt"),
                               col.names = "act.code"))
# measurements 
test <- cbind(test, read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", 
                                   "UCI HAR Dataset/test/X_test.txt")))

# unzip and read the train data
# subjects
train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", 
                        "UCI HAR Dataset/train/subject_train.txt"),
                    col.names = "subject")
# activities
train <- cbind(train, read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", 
                                     "UCI HAR Dataset/train/y_train.txt"),
                                 col.names = "act.code"))
# measurements 
train <- cbind(train, read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", 
                                     "UCI HAR Dataset/train/X_train.txt")))

### 1. Merges the training and the test sets to create one data set.
data <- rbind(test, train)

### 2. Extracts only the measurements on the mean and standard deviation 
### for each measurement. 
features <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", 
                           "UCI HAR Dataset/features.txt"), 
                       stringsAsFactors=F)
relevant.feat.idx <- grep("(std|mean)\\(\\)", features$V2)
relevant.feat.names <- features$V2[relevant.feat.idx]
data <- data[,c(1, 2, relevant.feat.idx+2)]

### 3. Uses descriptive activity names to name the activities in the data set
activity.labels <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", 
                                  "UCI HAR Dataset/activity_labels.txt"),
                              col.names = c("act.code", "activity"))
data <- merge(data, activity.labels)

### 4. Appropriately labels the data set with descriptive variable names.
names(data) <- c("act.code", "subject", relevant.feat.names, "activity")

### 5. From the data set in step 4, creates a second, independent tidy data set 
### with the average of each variable for each activity and each subject.
library(dplyr)
tidy <- data.frame(                 # Create an independent data set
  data %>%                          # using the data set from step 4, but
    group_by(activity, subject) %>% # for each combination of activity + subject,
      summarise_each(funs(mean(.)), # calculate the average of each variable
                     -act.code))    # except for activity code (redundant data).

## amend feature names messed up by plyr library
names(tidy) <- gsub("mean..", "AvgMean", names(tidy))
names(tidy) <- gsub("std..", "AvgStd", names(tidy))
names(tidy) <- gsub("BodyBody", "Body", names(tidy))

## (optional) save the tidy data set into a text file
#write.table(tidy, file="tidy.txt", row.names = F)

## (optional) creates a file with meaningful feature descriptions
#source('feature_description.R')

## outputs the results
tidy