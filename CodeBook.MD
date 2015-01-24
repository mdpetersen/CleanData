
## Getting and Cleaning Data Project Code Book

### About the project

create one R script called run_analysis.R that does the following:
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable
5.From the data set in step 4, creates a second, independent tidy data set with the average of 
each variable for each activity and each subject.

### Source Data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
[The source data for this project can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

###Transformation

##1. Merge the training and the test sets to create one data set.
All data source files were read into tables and merged using rbind()

##2. Extract only the measurements on the mean and standard deviation for each measurement. 
Subset dataset to only take into account variables with the mean and standard deviation

##3. Use descriptive activity names to name the activities in the data set
Measures and activities were renamed using features.txt and activity_labels.txt files and using names() function.

##4. Appropriately label the data set with descriptive activity names.
Use name function to set proper labels

##5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
Using ddply() function (plyr library) the dataset was group by subject and activity and the average of each variable was calculated using colMeans()
