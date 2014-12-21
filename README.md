UCI HAR Dataset Cleaning
===

The script assumes the UCI HAR Dataset is in the current working directory.

It merges the training and the test data sets, appending the subject ID and Activity ID, and subsequently the derived Activity value in text form.

Only columns containing mean or std, indicating mean or standard deviation calculations, are retained.

The output file, clean_data.txt summarises the data by activity and subject. The first three columns contain:
* activity
* subject_id
* activity_id

Subsequent columns contain the average of the column name over all subjects who did the specified activity.
