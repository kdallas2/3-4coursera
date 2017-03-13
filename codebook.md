# Codebook for the UCI HAR biometrics dataset
The dataset can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The README.txt file is descriptive and explains the study structure, measured variables, and labels contained in the dataset. 

## Variables and data
There are both a train and test set for measurements, subject labels, and activity labels. Each of the over 10,000 measurements in the measurements file has a corresponding subject and activity label. Each variable/column represents an engineered feature from the 6 main signals of X, Y, Z acceleration and angular velocity over a period of seconds with actual physical measurements being sent at a rate of 50 hz. There are 561 total of these features. These features have all been normalized between 1 and -1. Many of the features represent aggregated statistics for the interval including std, mean, min, max, etc.

## Treatment of data
1. Data is read in using the data.table package

2. Train and test sites are combined for measurements, subject labels, and activity labels.

3. These 3 tables are concatenated to form >10,000 x 563 table.

4. Columns are labelled appropriately according to given feature list. 

5. Std and mean features are selected and kept. 
>selection = c('std','mean','Activity','Subject')
>mask = grepl(paste(selection, collapse = '|'),names(dt))
>dt = dt[,..mask]

6. Data is summarized with aggregate means, grouped by activity, then subject.
>aggdt = aggregate(dt[,3:81],list(dt$Activity,dt$Subject),mean)
