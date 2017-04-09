# Week 3-4

Data cleaning exercise in Coursera's data science course.

README.txt has the best description of the dataset. Briefly:

##### Study structure
30 subjects from ages 18-49 did various activities and postures, including walking straight, climbing and descending stairs, sitting, standing, and lying. 
They wore a cellphone and the biometric data from the phone's accelerometer and gyroscope were recorded in the X, Y, Z directions in the time domain, at a rate of 50hz. 

##### Variables
Various data transformations were executed to produce a range of 561 different features, including aggregate statistics and Fourier transforms to examine the frequency domain. 

##### Tidy data set
Script for the manipulation into a tidy dataset can be found in run_analysis.R. 
This author organized and labelled the data, selecting standard deviations and means for each measured variable.
The data was also aggregated for mean for the data grouped first by activity type and then by subject number.
