{\rtf1\ansi\ansicpg1252\cocoartf1343\cocoasubrtf160
{\fonttbl\f0\fmodern\fcharset0 Courier;\f1\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red67\green67\blue67;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid1\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720

\f0\fs26 \cf0 \expnd0\expndtw0\kerning0
## Getting and Cleaning Data Project Code Book\
\
\
### About the project\
\pard\pardeftab720

\f1\fs28 \cf2 \expnd0\expndtw0\kerning0
create one R script called run_analysis.R that does the following.\'a0\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	1	}\expnd0\expndtw0\kerning0
Merges the training and the test sets to create one data set.\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	2	}\expnd0\expndtw0\kerning0
Extracts only the measurements on the mean and standard deviation for each measurement.\'a0\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	3	}\expnd0\expndtw0\kerning0
Uses descriptive activity names to name the activities in the data set\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	4	}\expnd0\expndtw0\kerning0
Appropriately labels the data set with descriptive variable\'a0names.\'a0\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	5	}\expnd0\expndtw0\kerning0
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
\f0\fs26 \cf0 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720
\cf0 \
### Source Data\
\pard\pardeftab720

\f1\fs28 \cf2 \expnd0\expndtw0\kerning0
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.
\f0\fs26 \cf0 \expnd0\expndtw0\kerning0
A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)\
\
[The source data for this project can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)\
\
###Transformation\
\
##1. Merge the training and the test sets to create one data set.\
All data source files were read into tables and merged using rbind()\
\
##2. Extract only the measurements on the mean and standard deviation for each measurement. \
Subset dataset to only take into account variables with the mean and standard deviation\
\
##3. Use descriptive activity names to name the activities in the data set\
Measures and activities were renamed using features.txt and activity_labels.txt files and using names() function.\
\
##4. Appropriately label the data set with descriptive activity names.\
Use name function to set proper labels\
\
##5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. \
Using ddply() function (plyr library) the dataset was group by subject and activity and the average of each variable was calculated using colMeans()}