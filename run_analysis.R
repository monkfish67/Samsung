trainingdata<-read.table("./trainingdata.txt",header=FALSE)
trainingactivity<-read.table("./trainingactivity.txt",header=FALSE)
trainingsubject<-read.table("./trainingsubject.txt",header=FALSE)
testdata<-read.table("./testdata.txt",header=FALSE)
testactivity<-read.table("./testactivity.txt",header=FALSE)
testsubject<-read.table("./testsubject.txt",header=FALSE)
activitylabels<-read.table("./activitylabels.txt",header=FALSE)
datanames<-read.table("./datanames.txt",header=FALSE)

colnames(trainingdata)<-datanames$V2
colnames(testdata)<-datanames$V2

trainingdata2<-select(trainingdata,contains("mean()") | contains("std()"))
testdata2<-select(testdata,contains("mean()") | contains("std()"))

trainingdata3<-bind_cols(trainingsubject,trainingactivity,trainingdata2)
testdata3<-bind_cols(testsubject,testactivity,testdata2)

finaldata<-bind_rows(trainingdata3,testdata3)

colnames(finaldata)[1:2]=c("participant","activity")

finaldata2<-mutate(finaldata,activity=activitylabels[activity,2])

finalnames=names(finaldata)

finaldatasum<-finaldata2%>%group_by(participant,activity)%>%summarize_at(vars(finalnames[3:68]),mean)

write.table(finaldatasum,"./finaldatasum.txt",row.name=FALSE)
write.table(finalnames,"./CodeBook.md")

