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
4. Appropriately labels the data set with descriptive variable names - remove "()" and "-" from names and make them lower case.
5. Combine the subject and activity columns with the data set. 
6. From above, creates a second, independent tidy data set with the average of each variable for each subject and each activity. Write the data to file AverageDataSet.txt.

### Tidy Data
The new data set has 68 columns. They are Subject, Activity and followed by 66 features. Each row has the average of each variable for each subject and each activity.
There are total of 180 rows (30 subjects and 6 activities). Here is the sample of first a few columns and rows:

	subject	activity	      tbodyaccmeanx	tbodyaccmeany	tbodyaccmeanz	tbodyaccstdx ...
	1	   LAYING	          0.221598244	-0.040513953	-0.113203554	-0.928056469 ...	
	1	   SITTING	          0.261237565	-0.001308288	-0.104544182	-0.977229008 ...	
	1	   STANDING	          0.278917629	-0.01613759	    -0.110601818	-0.995759902 ...	
	1	   WALKING	          0.277330759	-0.017383819	-0.111148104	-0.283740259 ...	
	1	   WALKING_DOWNSTAIRS 0.28918832	-0.009918505	-0.107566191	0.030035338	...
	1	   WALKING_UPSTAIRS	  0.25546169	-0.023953149	-0.097302002	-0.354708025 ...

### Tidy Dataset Variables
subject  	
activity    
tbodyaccmeanx  	
tbodyaccmeany  
tbodyaccmeanz  	
tbodyaccstdx  
tbodyaccstdy  	
tbodyaccstdz  
tgravityaccmeanx  	
tgravityaccmeany  
tgravityaccmeanz  	
tgravityaccstdx  
tgravityaccstdy  	
tgravityaccstdz  
tbodyaccjerkmeanx  	
tbodyaccjerkmeany  
tbodyaccjerkmeanz  	
tbodyaccjerkstdx  
tbodyaccjerkstdy  	
tbodyaccjerkstdz  
tbodygyromeanx  	
tbodygyromeany  
tbodygyromeanz  
tbodygyrostdx  
tbodygyrostdy  	
tbodygyrostdz  
tbodygyrojerkmeanx  	
tbodygyrojerkmeany  
tbodygyrojerkmeanz  	
tbodygyrojerkstdx  
tbodygyrojerkstdy  	
tbodygyrojerkstdz  
tbodyaccmagmean  	
tbodyaccmagstd  
tgravityaccmagmean  	
tgravityaccmagstd  
tbodyaccjerkmagmean  	
tbodyaccjerkmagstd  
tbodygyromagmean  	
tbodygyromagstd  
tbodygyrojerkmagmean  	
tbodygyrojerkmagstd  
fbodyaccmeanx  	
fbodyaccmeany  
fbodyaccmeanz  	
fbodyaccstdx  
fbodyaccstdy  	
fbodyaccstdz  
fbodyaccjerkmeanx  	
fbodyaccjerkmeany  
fbodyaccjerkmeanz  	
fbodyaccjerkstdx  
fbodyaccjerkstdy  	
fbodyaccjerkstdz  
fbodygyromeanx  
fbodygyromeany  
fbodygyromeanz  	
fbodygyrostdx  
fbodygyrostdy  	
fbodygyrostdz  
fbodyaccmagmean  
fbodyaccmagstd  
fbodybodyaccjerkmagmean	  
fbodybodyaccjerkmagstd  
fbodybodygyromagmean  	
fbodybodygyromagstd  
fbodybodygyrojerkmagmean  	
fbodybodygyrojerkmagstd  
