library(dplyr)

#####################################################################
#  The script does the following:
#  * Merges the training and the test sets to create one data set.
#  * Extracts only the measurements on the mean ("mean()")and standard 
#    deviation ("std()") for each measurement.
#  * Uses activity names from label file to name the activities in the data set
#  * Appropriately labels the data set with descriptive variable names
#    (remove "()" and "-")
#####################################################################

# Read data and merge test and training data into one data set
#####################################################################
setwd("C:/Coursera/Course3_CleanupData/project/UCI HAR Dataset")
features <- read.csv("features.txt", header=FALSE, sep="")
actLabel <- read.csv("activity_labels.txt", header=FALSE, sep ="")

# read test data sets
xTest <- read.csv("./test/X_test.txt", header=FALSE, sep="")
yTest <- read.csv("./test/y_test.txt", header=FALSE, sep ="")
subjTest <- read.csv("./test/subject_test.txt", header=FALSE, sep ="")

# read training data sets
xTrain <- read.csv("./train/X_train.txt", header=FALSE, sep="")
yTrain <- read.csv("./train/y_train.txt", header=FALSE, sep ="")
subjTrain <- read.csv("./train/subject_train.txt", header=FALSE, sep ="")

# combine training and test data sets
xMerged <- rbind(xTest, xTrain)
yMerged <- rbind(yTest, yTrain)
subjMerged <- rbind(subjTest, subjTrain)


# extract measurements mean() and std()
#################################################################
indexes <-  grep(paste(c("mean\\(\\)","std\\(\\)"), collapse="|"), features$V2)
newDf <- select(xMerged, indexes)

# change variable names to remove "()" and "-"
names(newDf) <- gsub("mean\\(\\)", "Mean", features[indexes,2])
names(newDf) <- gsub("std\\(\\)", "Std", names(newDf))
names(newDf) <- gsub("-", "", names(newDf))

# use descriptive activity names in actLabel to name the activities
###################################################################
yMerged[, 1] <- actLabel[yMerged[, 1], 2]
names(yMerged) <- "Activity"

# add column Subject and Activity
newDf <- cbind(subjMerged, yMerged, newDf)
newDf <- rename(newDf, Subject = V1)

# 5.new data set with the average of each variable for each activity
######################################################################
# and each subject from newDf.
avgDf <- newDf %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
write.csv(avgDf, file = "AverageDataSet.csv", row.names = FALSE)
