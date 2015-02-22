run_analysis<-function(fldr){
# load activity labels and featurs
  alloc<-paste(fldr,"activity_labels.txt", sep="/")
  activitylabels<-read.table(alloc)
  names(activitylabels)<-c("activityid","activity")
  featloc<-paste(fldr,"features.txt", sep="/")
  features<-read.table(featloc)
# change features from factors to characters
  features[,2]<-as.character(features[,2])
# create string to open the test folder
  testfldr<-paste(fldr,"test", sep="/")
# load files in test folder and rename headers
  stloc<-paste(testfldr,"subject_test.txt", sep="/")
  subjecttest<-read.table(stloc)
  names(subjecttest)<-"subject"
  yloc<-paste(testfldr,"y_test.txt", sep="/")
  ytest<-read.table(yloc)
  names(ytest)<-"activityid"
  xloc<-paste(testfldr,"x_test.txt", sep="/")
  xtest<-read.table(xloc)
  names(xtest)<-features[,2]
#   load only the mean and std columns from x_test
#   to avoid having to process unnecessary data
  i<-grep("mean\\(\\)", names(xtest))
  j<-grep("std\\(\\)", names(xtest))
  k<-sort(c(i,j))
  xtest1<-xtest[,k]
# create cleaned test dataset
  testdata<-cbind(subjecttest,ytest,xtest1)
# set path to training folder
  trainfldr<-paste(fldr,"train", sep="/")
# load training files
  strloc<-paste(trainfldr,"subject_train.txt", sep="/")
  subjecttrain<-read.table(strloc)
  names(subjecttrain)<-"subject"
  yrloc<-paste(trainfldr,"y_train.txt", sep="/")
  yrtest<-read.table(yrloc)
  names(yrtest)<-"activityid"
  xrloc<-paste(trainfldr,"x_train.txt", sep="/")
  xrtest<-read.table(xrloc)
  names(xrtest)<-features[,2]
  #   load only the mean and std columns from x_test
  #   to avoid having to process unnecessary data
  ir<-grep("mean\\(\\)", names(xrtest))
  jr<-grep("std\\(\\)", names(xrtest))
  kr<-sort(c(ir,jr))
  xrtest1<-xrtest[,kr]
  # create cleaned training dataset
  traindata<-cbind(subjecttrain,yrtest,xrtest1)
  merged<-join(testdata,traindata, type = "full")
  full<-join(merged,activitylabels, by="activityid")
# rearranging columns
  full$activityid<-full$activity
  full$activity<-NULL
# output full, raw dataset
  write.table(full, file="fulldataset.txt", row.names=FALSE, col.names=TRUE)
# melt data for reshaping
  mfull<-melt(full, id=(c("subject", "activityid")))
# cast in wide form
  cfull<-cast(mfull, subject+activityid ~ variable, mean)
# output data to file
  write.table(cfull, file="testtrain.txt", row.names=FALSE, col.names=TRUE)
}