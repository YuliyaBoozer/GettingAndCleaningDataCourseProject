#Project Description
Prepare a tidy data set from the original data collected for human activity study.

#Study design and data processing
__________________________________________________________________________________

##Collection of the raw data
The data was collected from this site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The files were uploaded and unzipped into a local folder.

##Raw Data

(Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

###Abstract

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

* Data Set Characteristics:  Multivariate, Time-Series
* Number of Instances: 10299
* Number of Attributes: 561
* Date Donated: 2012-12-10

###Data Set

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###Attribute Information

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

###Files

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

###Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

###Notes

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


#Creating a tidy data set
__________________________________________________________________________________

##How to create a tidy data set

Follow steps in the ReadMe.md file to create the tidy data set from the original data collected for human activity study.

##Cleaning of the data

The following files were uploaded into R:

  *  subject_test.txt
  *  X_test.txt
  *  Y_test.txt
  *  subject_train.txt
  *  X_train.txt
  *  Y_train.txt
  *  features
  *  activity_labels
  
Each file was uploaded into a separate data frame with the names corresponding to the file names. 

The subject and Y data sets had one column each, named as V1 once loaded into the corresponding data frames. The column names for these four data sets (subjectTest, subjectTrain, Ytest, Ytrain) were renamed to sujectID (subjectTest, subjectTrain) and activityID (Ytest, Ytrain) to better represent the data in those columns.

The subjectTest, Ytest, and Xtest data sets were combined into one testSet data set column-wise.
The subjectTrain, Ytrain, and Xtrain data sets were combined into one trainSet data set column-wise.

This allowed for connecting the subjects' data with their corresponding measurement variables in X data sets and the activity information in the Y data sets for train and test sets.

Then the testSet and trainSet data frames where combined into one data frame that contained the full data set for all observations.

The list of variable names for the X data set was loaded into the features data frame. It contained descriptive names for each of the 561 variables.

The columns 3 through 563 in the fullSet that contained the variables for the measurements where renamed to the descriptive names from the features data set.

The fullSet contained some duplicate columns. They were removed.

A newSet data set was created to contain only subjectID, activityID, and only the measurements on the mean and standard deviation for each measurement. 

The resulting, newSet, data set contained the acivity codes in the activityID variable. The activity_labels.txt file was loaded to get activity names. Then the acivity codes in the newSet were given the descriptive names from the activity_labels.txt file. The activityID variable was removed since it was replaced with the actvityName variable.

The data was group by activityName and subjectID and summarized by creating an average of each variable for each activity and each subject. This final tidy data set was created in the finalSet data set. 

At this point the data can be written into a text file and used for further analysis. The code for writing the finalSet into a text file and reading it back to R is given in the ReadMe.md file. 

##Description of the variables in the final tidy data set, finalSet

###Data Set

The dataset has 180 observations and 88 variables.
The data contains averages of mean and standard deviation of each measurement for each activity and each subject.

Summary of variables:

 $ activityName                        : Factor w/ 6 levels "LAYING","SITTING",..: 1 1 1 1 1 1 1 1 1 1 ...
 
 $ subjectID                           : int  1 2 3 4 5 6 7 8 9 10 ...
 
 $ tBodyAcc-mean()-X                   : num  0.222 0.281 0.276 0.264 0.278 ...
 
 $ tBodyAcc-mean()-Y                   : num  -0.0405 -0.0182 -0.019 -0.015 -0.0183 ...
 
 $ tBodyAcc-mean()-Z                   : num  -0.113 -0.107 -0.101 -0.111 -0.108 ...
 
 $ tGravityAcc-mean()-X                : num  -0.249 -0.51 -0.242 -0.421 -0.483 ...
 
 $ tGravityAcc-mean()-Y                : num  0.706 0.753 0.837 0.915 0.955 ...
 
 $ tGravityAcc-mean()-Z                : num  0.446 0.647 0.489 0.342 0.264 ...
 
 $ tBodyAccJerk-mean()-X               : num  0.0811 0.0826 0.077 0.0934 0.0848 ...
 
 $ tBodyAccJerk-mean()-Y               : num  0.00384 0.01225 0.0138 0.00693 0.00747 ...
 
 $ tBodyAccJerk-mean()-Z               : num  0.01083 -0.0018 -0.00436 -0.00641 -0.00304 ...
 
 $ tBodyGyro-mean()-X                  : num  -0.01655 -0.01848 -0.02082 -0.00923 -0.02189 ...
 
 $ tBodyGyro-mean()-Y                  : num  -0.0645 -0.1118 -0.0719 -0.093 -0.0799 ...
 
 $ tBodyGyro-mean()-Z                  : num  0.149 0.145 0.138 0.17 0.16 ...
 
 $ tBodyGyroJerk-mean()-X              : num  -0.107 -0.102 -0.1 -0.105 -0.102 ...
 
 $ tBodyGyroJerk-mean()-Y              : num  -0.0415 -0.0359 -0.039 -0.0381 -0.0404 ...
 
 $ tBodyGyroJerk-mean()-Z              : num  -0.0741 -0.0702 -0.0687 -0.0712 -0.0708 ...
 
 $ tBodyAccMag-mean()                  : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
 
 $ tGravityAccMag-mean()               : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
 
 $ tBodyAccJerkMag-mean()              : num  -0.954 -0.988 -0.979 -0.97 -0.98 ...
 
 $ tBodyGyroMag-mean()                 : num  -0.875 -0.95 -0.952 -0.93 -0.947 ...
 
 $ tBodyGyroJerkMag-mean()             : num  -0.963 -0.992 -0.987 -0.985 -0.986 ...
 
 $ fBodyAcc-mean()-X                   : num  -0.939 -0.977 -0.981 -0.959 -0.969 ...
 
 $ fBodyAcc-mean()-Y                   : num  -0.867 -0.98 -0.961 -0.939 -0.965 ...
 
 $ fBodyAcc-mean()-Z                   : num  -0.883 -0.984 -0.968 -0.968 -0.977 ...
 
 $ fBodyAcc-meanFreq()-X               : num  -0.159 -0.146 -0.074 -0.274 -0.136 ...
 
 $ fBodyAcc-meanFreq()-Y               : num  0.0975 0.2573 0.2385 0.3662 0.4665 ...
 
 $ fBodyAcc-meanFreq()-Z               : num  0.0894 0.4025 0.217 0.2013 0.1323 ...
 
 $ fBodyAccJerk-mean()-X               : num  -0.957 -0.986 -0.981 -0.979 -0.983 ...
 
 $ fBodyAccJerk-mean()-Y               : num  -0.922 -0.983 -0.969 -0.944 -0.965 ...
 
 $ fBodyAccJerk-mean()-Z               : num  -0.948 -0.986 -0.979 -0.975 -0.983 ...
 
 $ fBodyAccJerk-meanFreq()-X           : num  0.132 0.16 0.176 0.182 0.24 ...
 
 $ fBodyAccJerk-meanFreq()-Y           : num  0.0245 0.1212 -0.0132 0.0987 0.1957 ...
 
 $ fBodyAccJerk-meanFreq()-Z           : num  0.0244 0.1906 0.0448 0.077 0.0917 ...
 
 $ fBodyGyro-mean()-X                  : num  -0.85 -0.986 -0.97 -0.967 -0.976 ...
 
 $ fBodyGyro-mean()-Y                  : num  -0.952 -0.983 -0.978 -0.972 -0.978 ...
 
 $ fBodyGyro-mean()-Z                  : num  -0.909 -0.963 -0.962 -0.961 -0.963 ...
 
 $ fBodyGyro-meanFreq()-X              : num  -0.00355 0.10261 -0.08222 -0.06609 -0.02272 ...
 
 $ fBodyGyro-meanFreq()-Y              : num  -0.0915 0.0423 -0.0267 -0.5269 0.0681 ...
 
 $ fBodyGyro-meanFreq()-Z              : num  0.0105 0.0553 0.1477 0.1529 0.0414 ...
 
 $ fBodyAccMag-mean()                  : num  -0.862 -0.975 -0.966 -0.939 -0.962 ...
 
 $ fBodyAccMag-meanFreq()              : num  0.0864 0.2663 0.237 0.2417 0.292 ...
 
 $ fBodyBodyAccJerkMag-mean()          : num  -0.933 -0.985 -0.976 -0.962 -0.977 ...
 
 $ fBodyBodyAccJerkMag-meanFreq()      : num  0.266 0.342 0.239 0.274 0.197 ...
 
 $ fBodyBodyGyroMag-mean()             : num  -0.862 -0.972 -0.965 -0.962 -0.968 ...
 
 $ fBodyBodyGyroMag-meanFreq()         : num  -0.1398 0.0186 -0.0229 -0.2599 0.1024 ...
 
 $ fBodyBodyGyroJerkMag-mean()         : num  -0.942 -0.99 -0.984 -0.984 -0.985 ...
 
 $ fBodyBodyGyroJerkMag-meanFreq()     : num  0.1765 0.2648 0.1107 0.2029 0.0247 ...
 
 $ angle(tBodyAccMean,gravity)         : num  0.02137 0.00579 0.0179 -0.00236 0.02121 ...
 
 $ angle(tBodyAccJerkMean),gravityMean): num  0.00306 -0.00636 0.01665 -0.0155 0.05536 ...
 
 $ angle(tBodyGyroMean,gravityMean)    : num  -0.00167 0.06529 0.04559 0.00713 -0.00581 ...
 
 $ angle(tBodyGyroJerkMean,gravityMean): num  0.0844 -0.0294 0.0317 0.0367 -0.0344 ...
 
 $ angle(X,gravityMean)                : num  0.427 0.617 0.424 0.553 0.599 ...
 
 $ angle(Y,gravityMean)                : num  -0.52 -0.52 -0.63 -0.763 -0.825 ...
 
 $ angle(Z,gravityMean)                : num  -0.352 -0.479 -0.346 -0.23 -0.168 ...
 
 $ tBodyAcc-std()-X                    : num  -0.928 -0.974 -0.983 -0.954 -0.966 ...
 
 $ tBodyAcc-std()-Y                    : num  -0.837 -0.98 -0.962 -0.942 -0.969 ...
 
 $ tBodyAcc-std()-Z                    : num  -0.826 -0.984 -0.964 -0.963 -0.969 ...
 
 $ tGravityAcc-std()-X                 : num  -0.897 -0.959 -0.983 -0.921 -0.946 ...
 
 $ tGravityAcc-std()-Y                 : num  -0.908 -0.988 -0.981 -0.97 -0.986 ...
 
 $ tGravityAcc-std()-Z                 : num  -0.852 -0.984 -0.965 -0.976 -0.977 ...
 
 $ tBodyAccJerk-std()-X                : num  -0.958 -0.986 -0.981 -0.978 -0.983 ...
 
 $ tBodyAccJerk-std()-Y                : num  -0.924 -0.983 -0.969 -0.942 -0.965 ...
 
 $ tBodyAccJerk-std()-Z                : num  -0.955 -0.988 -0.982 -0.979 -0.985 ...
 
 $ tBodyGyro-std()-X                   : num  -0.874 -0.988 -0.975 -0.973 -0.979 ...
 
 $ tBodyGyro-std()-Y                   : num  -0.951 -0.982 -0.977 -0.961 -0.977 ...
 
 $ tBodyGyro-std()-Z                   : num  -0.908 -0.96 -0.964 -0.962 -0.961 ...
 
 $ tBodyGyroJerk-std()-X               : num  -0.919 -0.993 -0.98 -0.975 -0.983 ...
 
 $ tBodyGyroJerk-std()-Y               : num  -0.968 -0.99 -0.987 -0.987 -0.984 ...
 
 $ tBodyGyroJerk-std()-Z               : num  -0.958 -0.988 -0.983 -0.984 -0.99 ...
 
 $ tBodyAccMag-std()                   : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
 
 $ tGravityAccMag-std()                : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
 
 $ tBodyAccJerkMag-std()               : num  -0.928 -0.986 -0.976 -0.961 -0.977 ...
 
 $ tBodyGyroMag-std()                  : num  -0.819 -0.961 -0.954 -0.947 -0.958 ...
 
 $ tBodyGyroJerkMag-std()              : num  -0.936 -0.99 -0.983 -0.983 -0.984 ...
 
 $ fBodyAcc-std()-X                    : num  -0.924 -0.973 -0.984 -0.952 -0.965 ...
 
 $ fBodyAcc-std()-Y                    : num  -0.834 -0.981 -0.964 -0.946 -0.973 ...
 
 $ fBodyAcc-std()-Z                    : num  -0.813 -0.985 -0.963 -0.962 -0.966 ...
 
 $ fBodyAccJerk-std()-X                : num  -0.964 -0.987 -0.983 -0.98 -0.986 ...
 
 $ fBodyAccJerk-std()-Y                : num  -0.932 -0.985 -0.971 -0.944 -0.966 ...
 
 $ fBodyAccJerk-std()-Z                : num  -0.961 -0.989 -0.984 -0.98 -0.986 ...
 
 $ fBodyGyro-std()-X                   : num  -0.882 -0.989 -0.976 -0.975 -0.981 ...
 
 $ fBodyGyro-std()-Y                   : num  -0.951 -0.982 -0.977 -0.956 -0.977 ...
 
 $ fBodyGyro-std()-Z                   : num  -0.917 -0.963 -0.967 -0.966 -0.963 ...
 
 $ fBodyAccMag-std()                   : num  -0.798 -0.975 -0.968 -0.937 -0.963 ...
 
 $ fBodyBodyAccJerkMag-std()           : num  -0.922 -0.985 -0.975 -0.958 -0.976 ...
 
 $ fBodyBodyGyroMag-std()              : num  -0.824 -0.961 -0.955 -0.947 -0.959 ...
 
 $ fBodyBodyGyroJerkMag-std()          : num  -0.933 -0.989 -0.983 -0.983 -0.983 ...

###Variables

* activityName: the name of the activity performed by each subject in the study for which the measurements were taken. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

-Class: factor

-Unique values/levels of the variable: 6 levels; WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING


* subjectID: identifier for a subject performing the activity and for whom the measurements were taken. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.

-Class: int

-Unique values/levels of the variable: values 1 through 30.

* tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z: average of mean of time body acceleration signals, '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

-Class: num

-Unique values/levels of the variable: 0.222 0.281 0.276 0.264 0.278 ...

-Unit of measurement: Hz

* tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z: average of mean of time body gravity signals, '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

-Class: num

-Unique values/levels of the variable: -0.249 -0.51 -0.242 -0.421 -0.483 ...

-Unit of measurement: Hz

* tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z: average of mean of time body acceleration Jerk. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

-Class: num

-Unique values/levels of the variable: 0.0811 0.0826 0.077 0.0934 0.0848 ..

-Unit of measurement: Hz

* tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z: average of mean of time body gyroscope signals, '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

-Class: num

-Unique values/levels of the variable: 0.149 0.145 0.138 0.17 0.16 ...

-Unit of measurement: Hz

* tBodyGyroJerk-mean()-XYZ: average of mean of time body gyroscope Jerk. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

-Class: num

-Unique values/levels of the variable: -0.107 -0.102 -0.1 -0.105 -0.102 ...

-Unit of measurement: Hz

* tBodyAccMag-mean(): average of mean of time body acceleration the magnitude of the three-dimensional signals in the Euclidean norm

Class: num

* tGravityAccMag-mean(): average of mean of time body gyroscope the magnitude of the three-dimensional signals in the Euclidean norm

Class: num

* tBodyAccJerkMag-mean(): average of mean of time body acceleration jerk the magnitude of the three-dimensional signals in the Euclidean norm

Class: num

* tBodyGyroMag-mean(): average of mean of time body gyroscope jerk the magnitude of the three-dimensional signals in the Euclidean norm

Class: num


* tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z: average of standard deviation of time body acceleration signals, '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

-Class: num

-Unique values/levels of the variable: 0.222 0.281 0.276 0.264 0.278 ...

-Unit of measurement: Hz

* tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z: average of standard deviation of time body gravity signals, '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

-Class: num

-Unique values/levels of the variable: -0.249 -0.51 -0.242 -0.421 -0.483 ...

-Unit of measurement: Hz

* tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z: average of standard deviation of time body acceleration Jerk. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

-Class: num

-Unique values/levels of the variable: 0.0811 0.0826 0.077 0.0934 0.0848 ..

-Unit of measurement: Hz

* tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z: average of standard deviation of time body gyroscope signals, '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

-Class: num

-Unique values/levels of the variable: 0.149 0.145 0.138 0.17 0.16 ...

-Unit of measurement: Hz

* tBodyGyroJerk-std()-XYZ: average of standard deviation of time body gyroscope Jerk. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

-Class: num

-Unique values/levels of the variable: -0.107 -0.102 -0.1 -0.105 -0.102 ...

-Unit of measurement: Hz

* tBodyAccMag-std(): average of standard deviation of time body acceleration the magnitude of the three-dimensional signals in the Euclidean norm

Class: num

* tGravityAccMag-std(): average of standard deviation of time body gyroscope the magnitude of the three-dimensional signals in the Euclidean norm

Class: num

* tBodyAccJerkMag-std(): average of standard deviation of time body acceleration jerk the magnitude of the three-dimensional signals in the Euclidean norm

Class: num

* tBodyGyroMag-std(): average of standard deviation of time body gyroscope jerk the magnitude of the three-dimensional signals in the Euclidean norm

Class: num

*  fBodyAcc-mean()-X               
 fBodyAcc-mean()-Y               
 fBodyAcc-mean()-Z               
 fBodyAcc-meanFreq()-X           
 fBodyAcc-meanFreq()-Y           
 fBodyAcc-meanFreq()-Z           
 fBodyAccJerk-mean()-X           
 fBodyAccJerk-mean()-Y           
 fBodyAccJerk-mean()-Z           
 fBodyAccJerk-meanFreq()-X       
 fBodyAccJerk-meanFreq()-Y       
 fBodyAccJerk-meanFreq()-Z       
 fBodyGyro-mean()-X              
 fBodyGyro-mean()-Y              
 fBodyGyro-mean()-Z              
 fBodyGyro-meanFreq()-X          
 fBodyGyro-meanFreq()-Y          
 fBodyGyro-meanFreq()-Z          
 fBodyAccMag-mean()              
 fBodyAccMag-meanFreq()          
 fBodyBodyAccJerkMag-mean()      
 fBodyBodyAccJerkMag-meanFreq()  
 fBodyBodyGyroMag-mean()         
 fBodyBodyGyroMag-meanFreq()     
 fBodyBodyGyroJerkMag-mean()     
 fBodyBodyGyroJerkMag-meanFreq()
 fBodyAcc-std()-X                 
 fBodyAcc-std()-Y                
 fBodyAcc-std()-Z                
 fBodyAccJerk-std()-X            
 fBodyAccJerk-std()-Y            
 fBodyAccJerk-std()-Z            
 fBodyGyro-std()-X               



Fast Fourier Transform (FFT) version of the variables described above. These are averages of the original measurements by activity and subject. The 'f' indicates frequency domain signals.

* angle(tBodyAccMean,gravity)         
 angle(tBodyAccJerkMean),gravityMean)
 angle(tBodyGyroMean,gravityMean)    
 angle(tBodyGyroJerkMean,gravityMean)
 angle(X,gravityMean)                
 angle(Y,gravityMean)                
 angle(Z,gravityMean)

The set of these variables indicated the angle between the vectors. These are averages of the original measurements by activity and subject.

#Sources
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

http://datasciencespecialization.github.io/getclean/

