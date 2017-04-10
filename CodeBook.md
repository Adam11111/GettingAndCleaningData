# CodeBook for tidy_data.txt

See README.md for data source as well as code to import into R for run_analysis.R to work

## Description

This dataset represents the mean and standard deviation of accelerometer and gyroscopic data from smartphones.

The means and standard deviations are averaged and grouped by the type of activity and the test subject.

## Field List

### The first 2 fields are the grouped factor levels.
1 activity_name
* activity categories done by the study subjects
* Values:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

1 subject_id
* ID values representing the subject participants
* Contains the values 1:30


3 Time_Body_Acc_mean_X
4 Time_Body_Acc_mean_Y
5 Time_Body_Acc_mean_Z
6 Time_Body_Acc_std_X
7 Time_Body_Acc_std_Y
8 Time_Body_Acc_std_Z
9 Time_Grav_Acc_mean_X
10 Time_Grav_Acc_mean_Y
11 Time_Grav_Acc_mean_Z
12 Time_Grav_Acc_std_X
13 Time_Grav_Acc_std_Y
14 Time_Grav_Acc_std_Z
15 Time_Body_Acc_Jerk_mean_X
16 Time_Body_Acc_Jerk_mean_Y
17 Time_Body_Acc_Jerk_mean_Z
18 Time_Body_Acc_Jerk_std_X
19 Time_Body_Acc_Jerk_std_Y
20 Time_Body_Acc_Jerk_std_Z
21 Time_Body_Gyro_mean_X
22 Time_Body_Gyro_mean_Y
23 Time_Body_Gyro_mean_Z
24 Time_Body_Gyro_std_X
25 Time_Body_Gyro_std_Y
26 Time_Body_Gyro_std_Z
27 Time_Body_Gyro_Jerk_mean_X
28 Time_Body_Gyro_Jerk_mean_Y
29 Time_Body_Gyro_Jerk_mean_Z
30 Time_Body_Gyro_Jerk_std_X
31 Time_Body_Gyro_Jerk_std_Y
32 Time_Body_Gyro_Jerk_std_Z
33 Time_Body_Acc_Mag_mean
34 Time_Body_Acc_Mag_std
35 Time_Grav_Acc_Mag_mean
36 Time_Grav_Acc_Mag_std
37 Time_Body_Acc_Jerk_Mag_mean
38 Time_Body_Acc_Jerk_Mag_std
39 Time_Body_Gyro_Mag_mean
40 Time_Body_Gyro_Mag_std
41 Time_Body_Gyro_Jerk_Mag_mean
42 Time_Body_Gyro_Jerk_Mag_std
43 Freq_Body_Acc_mean_X
44 Freq_Body_Acc_mean_Y
45 Freq_Body_Acc_mean_Z
46 Freq_Body_Acc_std_X
47 Freq_Body_Acc_std_Y
48 Freq_Body_Acc_std_Z
49 Freq_Body_Acc_Jerk_mean_X
50 Freq_Body_Acc_Jerk_mean_Y
51 Freq_Body_Acc_Jerk_mean_Z
52 Freq_Body_Acc_Jerk_std_X
53 Freq_Body_Acc_Jerk_std_Y
54 Freq_Body_Acc_Jerk_std_Z
55 Freq_Body_Gyro_mean_X
56 Freq_Body_Gyro_mean_Y
57 Freq_Body_Gyro_mean_Z
58 Freq_Body_Gyro_std_X
59 Freq_Body_Gyro_std_Y
60 Freq_Body_Gyro_std_Z
61 Freq_Body_Acc_Mag_mean
62 Freq_Body_Acc_Mag_std
63 Freq_Body_Body_Acc_Jerk_Mag_mean
64 Freq_Body_Body_Acc_Jerk_Mag_std
65 Freq_Body_Body_Gyro_Mag_mean
66 Freq_Body_Body_Gyro_Mag_std
67 Freq_Body_Body_Gyro_Jerk_Mag_mean
68 Freq_Body_Body_Gyro_Jerk_Mag_std