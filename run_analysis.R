## Set working directory

setwd("C:/Users/Jeff/Google Drive/coursera/Data Science Course/Course Mataerials/3-Get and Clean Data/Week 4/Programming Project")

## Let's begin by identifying the packages that need
## to be installed to make it all work
## listpack is the list of packages needed
## load all libraries


listpack <- c("data.table", "dplyr")
newpacks <- listpack[!(listpack %in% installed.packages()[,"Package"])]
if(length(newpacks)) install.packages(newpacks)
for (i in 1:length(listpack) ) library(listpack[i], character.only = TRUE)


## check to see if zip file is already dowloaded. If it is dowloaded then assume it is also unzipped.
## load the data zip file into the current working directory from the original source.
## unzip the file into a subdirectory of the working directory.
## The subdirectory is called "UCI HAR Dataset"

if (!file.exists("UCIZipfile.zip")) {
    originalUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(originalUrl, "UCIZipfile.zip")
    unzip("UCIZipfile.zip")
}

## get the column names for the features data and store in vector called colnames

colnames <- read.table("./UCI HAR Dataset/features.txt")

## get the labels for the activities

actnames <- read.table("./UCI HAR Dataset/activity_labels.txt")

## load all required data files from the "test" and the "train" directories. Store in data tables

test.activities <- as.data.table(read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE,sep="",col.names = "activity"))
test.subjects <- as.data.table(read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE,sep="",col.names = "subjectnumber"))
test.features <- as.data.table(read.table("./UCI HAR Dataset/test/x_test.txt",header=FALSE,sep="",col.names = colnames[,2]))

train.activities <- as.data.table(read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE,sep="",col.names = "activity"))
train.subjects <- as.data.table(read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE,sep="",col.names = "subjectnumber"))
train.features <- as.data.table(read.table("./UCI HAR Dataset/train/x_train.txt",header=FALSE,sep="",col.names = colnames[,2]))


## merge the *.activities, *.subjects, as new columns on *.features for both test. and train. data tables, and add a new 
## column called source which indicated if the data comes from the test set or the train set.

testData <- cbind(test.subjects,test.activities,test.features)
testData <- mutate(testData, source = "test")

trainData <- cbind(train.subjects,train.activities,train.features)
trainData <- mutate(trainData, source = "train")


## convert second column from numeric to factor and add labels
testData$activity <- factor(testData$activity, labels = actnames$V2)
trainData$activity <- factor(trainData$activity, labels = actnames$V2)

## now we combine the two files and extract only the mean and standard deviation variable
dataSet <- rbind(testData,trainData)%>%select(activity,subjectnumber,matches('mean|std'))


## Now we should have all of the data we need in a nice tidy dataset. 
## Each column is a unique variable and each row is a unique observation.
## However there are multiple rows for each subject, based on the activity

## We can cleanup and remove some of the vectors that are no longer needed. This will clear up some space.

rm("test.activities","test.features","test.subjects","train.activities","train.features","train.subjects","actnames","colnames","listpack", "testData", "trainData", "i", "newpacks")

## next we need to reduce the data to an independent tidy data set with the average of 
## each variable for each activity and each subject.

## each subject has multiple observations for each activity on the 86 mean and std variables
## we need to group and summarize these data. We expect to have 180 rows (30 subjects times 6 activities)
## and 88 variables (86 mean and std and one each for subjectnumber and activity)

tidyDataset <- dataSet%>%group_by(subjectnumber,activity)%>%summarise_all(mean)
dim(tidyDataset)

## finally we write the dataset out to the working directory using the write.table command

write.table(tidyDataset, file = "tidyDataset.txt",col.names = TRUE, sep = " ",row.name=FALSE)

## END

