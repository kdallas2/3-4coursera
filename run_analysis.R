library(data.table)

# Load data
path = getwd()
Xtrain = fread(file.path(path, 'train', 'X_train.txt'))
ytrain = fread(file.path(path, 'train', 'y_train.txt'))
Xtest = fread(file.path(path, 'test', 'X_test.txt'))
ytest = fread(file.path(path, 'test', 'y_test.txt'))
subtrain = fread(file.path(path,'train','subject_train.txt'))
subtest = fread(file.path(path,'test','subject_test.txt'))

# Concatenate train/test
Xtotal = rbind(Xtrain,Xtest)
ytotal = rbind(ytrain,ytest)
subtotal = rbind(subtrain,subtest)

#set col names
setnames(subtotal, "V1", "Subject")
setnames(ytotal, "V1", "Activity")

#combine tables
dt = cbind(subtotal,ytotal,Xtotal)

#rename
activ = fread(file.path(path,'activity_labels.txt'))
features = fread(file.path(path,'features.txt'))
collist = features[,V2]

dt$Activity = with(activ, V2[match(dt$Activity, V1)])

for (i in 1:length(collist)){
	names(dt)[i+2] = collist[i]
}

#select only std and mean, take mean of groups
selection = c('std','mean','Activity','Subject')
mask = grepl(paste(selection, collapse = '|'),names(dt))
dt = dt[,..mask]	
aggdt = aggregate(dt[,3:81],list(dt$Activity,dt$Subject),mean)

names(aggdt)[1:2] = c('Activity','Subject')
