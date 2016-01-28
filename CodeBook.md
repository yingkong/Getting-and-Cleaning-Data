## Course Project Codebook

### Original Data
The data provided from the course website is originally collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It includes the following files:

* features_info.txt: Information about the variables used in the feature vector.
* features.txt: List of all features
* activity_labels.txt: Activity names
* test/X_test.txt: Test data set
* test/y_test.txt: Test labels
* test/subject_test.txt : Test subject
* train/X_train.txt: Training data set
* train/y_train.txt: Training labels
* train/subject_reain.txt : Training subject

### Transformation
The objective of the project is to get and clean the original dataset and prepare tidy data that can be used for later analysis. 
The R script run_analysis.R is created to do the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean (with "mean()" in feature name) and standard deviation (with "std()" in feature name) for each measurement. There are 66 columns.
3. Uses descriptive activity names in activity_labels.txt to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names - remove "()" and "-" from names.
5. Combine the Subject and Activity columns with the data set. 
6. From above, creates a second, independent tidy data set with the average of each variable for each subject and each activity. Write the data to file AverageDataSet.csv.

### Tidy Data
The new data set has 68 columns. They are Subject, Activity and followed by 66 features. Each row has the average of each variable for each subject and each activity.
There are total of 180 rows (30 subjects and 6 activities). Here is the sample of first a few columns and rows:

Subject	Activity	tBodyAccMeanX	tBodyAccMeanY	tBodyAccMeanZ	tBodyAccStdX	tBodyAccStdY	tBodyAccStdZ	tGravityAccMeanX	tGravityAccMeanY	tGravityAccMeanZ ...
1	LAYING	0.221598244	-0.040513953	-0.113203554	-0.928056469	-0.836827406	-0.826061402	-0.248881798	0.705549773	0.44581772...
1	SITTING	0.261237565	-0.001308288	-0.104544182	-0.977229008	-0.922618642	-0.939586291	0.831509933	0.204411593	0.332043703...
1	STANDING	0.278917629	-0.01613759	-0.110601818	-0.995759902	-0.973190056	-0.979775877	0.942952	-0.272983832	0.013490582...
1	WALKING	0.277330759	-0.017383819	-0.111148104	-0.283740259	0.114461337	-0.260027902	0.935223201	-0.282165021	-0.068102864...
1	WALKING_DOWNSTAIRS	0.28918832	-0.009918505	-0.107566191	0.030035338	-0.031935943	-0.230434213	0.931874419	-0.266610339	-0.062119959...
1	WALKING_UPSTAIRS	0.25546169	-0.023953149	-0.097302002	-0.354708025	-0.002320265	-0.019479239	0.893351098	-0.362153364	-0.07540294...

### Tidy Dataset Variables
Subject	

Activity

tBodyAccMeanX
	
tBodyAccMeanY

tBodyAccMeanZ	

tBodyAccStdX

tBodyAccStdY
	
tBodyAccStdZ
tGravityAccMeanX	
tGravityAccMeanY
tGravityAccMeanZ	
tGravityAccStdX
tGravityAccStdY	
tGravityAccStdZ
tBodyAccJerkMeanX	
tBodyAccJerkMeanY
tBodyAccJerkMeanZ	
tBodyAccJerkStdX
tBodyAccJerkStdY	
tBodyAccJerkStdZ
tBodyGyroMeanX	
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY	
tBodyGyroStdZ
tBodyGyroJerkMeanX	
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ	
tBodyGyroJerkStdX
tBodyGyroJerkStdY	
tBodyGyroJerkStdZ
tBodyAccMagMean	
tBodyAccMagStd
tGravityAccMagMean	
tGravityAccMagStd
tBodyAccJerkMagMean	
tBodyAccJerkMagStd
tBodyGyroMagMean	
tBodyGyroMagStd
tBodyGyroJerkMagMean	
tBodyGyroJerkMagStd
fBodyAccMeanX	
fBodyAccMeanY
fBodyAccMeanZ	
fBodyAccStdX
fBodyAccStdY	
fBodyAccStdZ
fBodyAccJerkMeanX	
fBodyAccJerkMeanY
fBodyAccJerkMeanZ	
fBodyAccJerkStdX
fBodyAccJerkStdY	
fBodyAccJerkStdZ
fBodyGyroMeanX	
fBodyGyroMeanY
fBodyGyroMeanZ	
fBodyGyroStdX
fBodyGyroStdY	
fBodyGyroStdZ
fBodyAccMagMean	
fBodyAccMagStd
fBodyBodyAccJerkMagMean	
fBodyBodyAccJerkMagStd
fBodyBodyGyroMagMean	
fBodyBodyGyroMagStd
fBodyBodyGyroJerkMagMean	
fBodyBodyGyroJerkMagStd
