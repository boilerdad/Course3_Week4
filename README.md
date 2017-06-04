"# README.md for Week 4 run_analysis.R script

The script "run_analysis.R is writtent to produce a tidy data set using data provided by
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

More information about the original dataset is available at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


This script is designed to accomplish the following (taken from the course assignment description):
1-Merges the training and the test sets to create one data set.
2-Extracts only the measurements on the mean and standard deviation for each measurement.
3-Uses descriptive activity names to name the activities in the data set
4-Appropriately labels the data set with descriptive variable names.
5-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The script is written as follows:

1)  Set working directory
2)  Check to make sure required packages are installed and loaded to R
    The required packages are data.table, and dplyr
3)  Check to see of sorce data files are already downloaded and expanded from the zip file. If they are not, 
    download from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    Once dowloaded then they need to be unzipped and the extract stored in the working director
4)  Read the feature names (the names of the actual measurement variables) into "colnames". This will then be used to add labels 
    to the variables in the various data tables
5)  Read the activity names into actnames. These are used to tranform the activity numbers into factor labels
6)  Read each of the 3 data files for the test data and each of the 3 data files for the train data. The three data files contain:
    1)  activities is a vector of activity numbers associated with the 6 activities that were measured
        1 - Walking
        2 - Walking upstairs
        3 - Walking downstairs
        4 - Stitting
        5 - Standing
        6 - Laying
    2)  subjects is a vector of the subject identifier numbers from 1 to 30
    3)  features is a data table 561 variables which represent the various measurements that were recorded from the smartphone
    When reading the features files the colnames vector is used to populate the column names
7)  Use cbind to combine the three data set for train and for test. At this point we have two data tables, testData and trainData.
    These data tables each have 564 variables representing the 561 activity measurements, the respondent number, the activity, 
    and a source variable that tells us if it is test data or train data. 
8)  Convert the activity variable from an integer to a factor label (see item 6 above).
9)  Use rbind to append the two data tables together into a new data table, "dataSet" which has all of the data.
10) As we rbind the two data table, we pipe the results tp the select function from and only keep the variables we need
    1)  The subject number
    2)  The activity name
    3)  The 86 mean and standard deviation variables
11) There are a lot of data tables and vectors in memory at this point. Since these are no longer needed, they are removed to clean
    things us. This leaves only the data table "dataSet" in memory.
12) Next we need to calculate the means of all of the variables grouped by subject and activity. A piped command is used to
    1)  group the dataSet table by subjectnumber and activity
    2)  calculate the mean of each group on all 86 feature measurements
    3)  assign the result to the data table "tidyDataset"
13) Finally, write the tidyDataset to a text file using write.table with col names included, no row names and a singe space
    as a delimiter (there are no naturally occuring spaces in the data)
    
The final data table, tidyDataset, in accordance with the definition established by Hadley Wickham (Wickham, (August, 2014), Tiday data, Journal of Statistical Software. (vol 59:10)). As such it is:
    1) Each variable forms a column
    2) Each observation forms a row
    3) Each type of obervational unit form a table
    
tidyDataset meets each of these requirements since:
    1)  each column contains only one variable is an unique identifier of subect and activity or represents a single unique measurement 
        of a mean of a mean or standard deviation from the original data sets.
    2)  each row contians only one observation of 86 measurements of an unique respondent performing an unique activity
    3)  all data in the data set represent an unique set of measurements taken for a defined set of subjects performing a defined set
        of activities measured by a single type of device.
