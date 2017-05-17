Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Data Source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Clean up process:
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set.
4.Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Variable description:
	Variable name
1	subid
2	actid
3	TimeBodyAcceleration.mean.X
4	TimeBodyAcceleration.mean.Y
5	TimeBodyAcceleration.mean.Z
6	TimeGravityAcceleration.mean.X
7	TimeGravityAcceleration.mean.Y
8	TimeGravityAcceleration.mean.Z
9	TimeBodyAccelerationJerk.mean.X
10	TimeBodyAccelerationJerk.mean.Y
11	TimeBodyAccelerationJerk.mean.Z
12	TimeBodyGyro.mean.X
13	TimeBodyGyro.mean.Y
14	TimeBodyGyro.mean.Z
15	TimeBodyGyroJerk.mean.X
16	TimeBodyGyroJerk.mean.Y
17	TimeBodyGyroJerk.mean.Z
18	TimeBodyAccelerationMag.mean
19	TimeGravityAccelerationMag.mean
20	TimeBodyAccelerationJerkMag.mean
21	TimeBodyGyroMag.mean
22	TimeBodyGyroJerkMag.mean
23	FrequencyBodyAcceleration.mean.X
24	FrequencyBodyAcceleration.mean.Y
25	FrequencyBodyAcceleration.mean.Z
26	FrequencyBodyAccelerationJerk.mean.X
27	FrequencyBodyAccelerationJerk.mean.Y
28	FrequencyBodyAccelerationJerk.mean.Z
29	FrequencyBodyGyro.mean.X
30	FrequencyBodyGyro.mean.Y
31	FrequencyBodyGyro.mean.Z
32	FrequencyBodyAccelerationMag.mean
33	FrequencyBodyAccelerationJerkMag.mean
34	FrequencyBodyGyroMag.mean
35	FrequencyBodyGyroJerkMag.mean
36	TimeBodyAcceleration.std.X
37	TimeBodyAcceleration.std.Y
38	TimeBodyAcceleration.std.Z
39	TimeGravityAcceleration.std.X
40	TimeGravityAcceleration.std.Y
41	TimeGravityAcceleration.std.Z
42	TimeBodyAccelerationJerk.std.X
43	TimeBodyAccelerationJerk.std.Y
44	TimeBodyAccelerationJerk.std.Z
45	TimeBodyGyro.std.X
46	TimeBodyGyro.std.Y
47	TimeBodyGyro.std.Z
48	TimeBodyGyroJerk.std.X
49	TimeBodyGyroJerk.std.Y
50	TimeBodyGyroJerk.std.Z
51	TimeBodyAccelerationMag.std
52	TimeGravityAccelerationMag.std
53	TimeBodyAccelerationJerkMag.std
54	TimeBodyGyroMag.std
55	TimeBodyGyroJerkMag.std
56	FrequencyBodyAcceleration.std.X
57	FrequencyBodyAcceleration.std.Y
58	FrequencyBodyAcceleration.std.Z
59	FrequencyBodyAccelerationJerk.std.X
60	FrequencyBodyAccelerationJerk.std.Y
61	FrequencyBodyAccelerationJerk.std.Z
62	FrequencyBodyGyro.std.X
63	FrequencyBodyGyro.std.Y
64	FrequencyBodyGyro.std.Z
65	FrequencyBodyAccelerationMag.std
66	FrequencyBodyAccelerationJerkMag.std
67	FrequencyBodyGyroMag.std
68	FrequencyBodyGyroJerkMag.std
