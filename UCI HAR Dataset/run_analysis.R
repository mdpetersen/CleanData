##############################################################################
# This script will perform the following steps on the UCI HAR Dataset downloaded from 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
#############################################################################

# 1.Merge the training and test sets to create one data set

#read train files
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

#read test files
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# create datasets
X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
S <- rbind(subject_train, subject_test)

# 2.Extract only the measurements on the mean and standard deviation for each measurement

#read features file
features <- read.table("features.txt")

# get columns with mean() or std() in their names
filter <- grep("-(mean|std)\\(\\)", features[, 2])

# subset dataset
X <- X[, filter]

# update column names
names(X) <- features[filter, 2]

# 3.Use descriptive activity names to name the activities in the data set

#read activities file
activities <- read.table("activity_labels.txt")

# update value names
Y[, 1] <- activities[Y[, 1], 2]

# update column name
names(Y) <- "activity"

# 4.Appropriately label the data set with descriptive variable names

# update column name
names(S) <- "subject"

# bind the datasets in a single data set
data <- cbind(X, Y, S)

# 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject

# we are going to use plyr library
library(plyr); library(dplyr)

# groups and calculates the mean
tidy_data <- ddply(data, .(subject, activity), function(x) colMeans(x[, 1:(ncol(data)-2)]))

#save the file in .txt format
write.table(tidy_data, "tidy_data.txt", row.name=FALSE)