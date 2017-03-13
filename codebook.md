# Codebook for the UCI HAR biometrics dataset
The dataset can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The readme file is descriptive and explains the study structure, measured variables, and labels contained in the dataset. 

## Brief overview

##### Study structure
30 subjects from ages 18-49 did various activities and postures, including walking straight, climbing and descending stairs, sitting, standing, and lying. 
They wore a cellphone and the biometric data from the phone's accelerometer and gyroscope were recorded in the X, Y, Z directions in the time domain, at a rate of 50hz. 

##### Variables
Various data transformations were executed to produce a range of 561 different features, including aggregate statistics and Fourier transforms to examine the frequency domain. 

##### Tidy data set
This author organized and labelled the data, selecting standard deviations and means for each measured variable.
The data was also aggregated for mean for the data grouped first by activity type and then by subject number.

More in depth description can be found in README.txt in the dataset.
