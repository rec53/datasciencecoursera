Clean_data.txt output format
===

## activity
Contains the activity as text

## activity_id
Contains numbers 1 to 6 corresponding to the following activities:
- 1 WALKING
- 2 WALKING_UPSTAIRS
- 3 WALKING_DOWNSTAIRS
- 4 SITTING
- 5 STANDING
- 6 LAYING

## subject_id
The subject ID, integer in range 1-30.

Subsequent columns are the average of all values for the given activity and subject, for the observations in the UCI HAR Dataset

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

Appended with either mean(), to denote mean, or std(), to denote standard deviation.

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

