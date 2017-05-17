#Run the analysis -> creates the tiny data set and saves it under "tidy.txt"


#1.Merges the training and the test sets to create one data set.
#read data and label
features = read.table('features.txt');
actlabels = read.table('activity_labels.txt'); 
subtrain = read.table('train/subject_train.txt'); 
subtest = read.table('test/subject_test.txt');
xtrain = read.table('train/x_train.txt'); 
ytrain = read.table('train/y_train.txt')
xtest = read.table('test/x_test.txt'); 
ytest = read.table('test/y_test.txt')

sub<-  union(grep("mean\\(\\)", features$V2), grep("std\\(\\)", features$V2))
sub<- as.vector(sub) 

#assign names to columns
colnames(actlabels)<- c("actid","act")
colnames(subtrain) <- "subid"
colnames(xtrain) <- features[,2]
colnames(ytrain) <- "actid"
colnames(subtest) <- "subid"
colnames(xtest) <- features[,2]
colnames(ytest) <- "actid"

#combine to get training data
traindt <- cbind(xtrain,ytrain,subtrain)

#combine to get test data
testdt <- cbind(xtest,ytest,subtest)

#combine training and test data 
dt<- rbind(traindt,testdt)

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#get subset of mean and std only
datasub<- cbind(dt[,sub],dt[,c("subid","actid")])
data<- join(datasub,actlabels,by="actid")

#3.Uses descriptive activity names to name the activities in the data set
names(data)<- gsub("-",".",names(data),perl=TRUE)
names(data)<- gsub("\\(|\\)","",names(data),perl=TRUE)

#4.Appropriately labels the data set with descriptive variable names.
names(data) <- gsub("Acc", "Acceleration", names(data))
names(data) <- gsub("^t", "Time", names(data))
names(data) <- gsub("^f", "Frequency", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))

#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
tidy<- ddply(data,c("subid","actid"),numcolwise(mean))
write.table(tidy,file="tidydata.txt")
