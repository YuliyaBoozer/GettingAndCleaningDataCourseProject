#load test files
subjectTest <- read.table("subject_test.txt")
Xtest <- read.table("X_test.txt")
Ytest <- read.table("Y_test.txt")

#load train files
subjectTrain <- read.table("subject_train.txt")
Xtrain <- read.table("X_train.txt")
Ytrain <- read.table("Y_train.txt")

#change Column names for subject and Y data sets
colnames(subjectTest) <- "subjectID"
colnames(Ytest) <- "activityID"
colnames(subjectTrain) <- "subjectID"
colnames(Ytrain) <- "activityID"

#combine test data sets
testSet <- cbind(subjectTest,Ytest,Xtest)

#combine train data sets
trainSet <- cbind(subjectTrain,Ytrain,Xtrain)

#combine train and test data sets into one full data set
fullSet <- rbind(testSet,trainSet)

#load features
features <- read.table("features.txt")

#rename columns
library(data.table)
colRename <- colnames(fullSet[3:563])
featureList <- as.character(features$V2)
setnames(fullSet, colRename, featureList)

#load dplyr
library(dplyr)

#get rid of duplcaited column names
fullSet <- fullSet[ , !duplicated(colnames(fullSet))]

#select only mean and std columns
newSet <- select(fullSet, subjectID, activityID, contains("mean"),contains("std"))

#load activity labels
activityLabels <- read.table("activity_labels.txt")

#use activity names to label activites
labeledSet <- merge(newSet, activityLabels, by.x = "activityID", by.y = "V1")
labeledSet <- (select(labeledSet, -activityID))
labeledSet <- mutate(labeledSet, activityName = V2)
labeledSet <- (select(labeledSet, -V2))

#create final dataset 
groupedData <- group_by(labeledSet, activityName, subjectID)
finalSet <- summarise_each(groupedData, funs(mean))



