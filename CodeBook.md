# CodeBook for tidy_data.txt

See README.md for data source as well as code to import into R for run_analysis.R to work

IMPORTANT ASSUMPTION: The XYZ variables were not stacked on the assumption that the axis directions are to be kept separate.

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

2 subject_id
* ID values representing the subject participants
* Contains the values 1:30


### Fields 3 through 68
The following fields from columns 3 to 68 contain the means of each variable (of the means and standard deviations).

There are several categories/groups of observations. The following describes the labels used and what they mean, roughly in order of how they appear in the column names themselves.

The following 3 categories are mutually exclusive in their appearance:
* Time/Freq - time or frequency domain signals
* Body/Grav - body or gravity acceleration signals
* Acc/Gyro - measurements from the accelerometer or gyroscope

There are 2 add-on labels:
* Jerk - jerk signals from body linear acceleration and angular velocity derived in time
* Mag - magnitude of the three-dimensional signals using the Euclidean norm

Followed by 2 more label groups:
* mean/std - mean or standard deviation of the meansurement
* X/Y/Z - used to denote the 3 axial signals in the X, Y and Z directions

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