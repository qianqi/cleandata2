x_train=read.table("X_train.txt")
y_train=read.table("y_train.txt")
subject_train=read.table("subject_train.txt")
x_test=read.table("X_test.txt")
y_test=read.table("y_test.txt")
subject_test=read.table("subject_test.txt")
train=cbind(subject_train,y_train,x_train)
test=cbind(subject_test,y_test,x_test)
m=rbind(train,test)
feature=read.table("features.txt")
nameid=c("subject","labels",as.character(feature[[2]]))
names(m)=nameid
std.index=grep("std\\(\\)",nameid)
mean.index=grep("mean\\(\\)",nameid)
m2=m[,c(1,2,std.index,mean.index)]
activity=read.table("activity_labels.txt")
colnames(activity)=c("labels","activity_names")
m3=merge(activity,m2,by="labels")
m3=m3[,-1]
library(dplyr)
final=m3 %>% group_by(activity_names,subject) %>% summarise_each(funs(mean))
write.table(final,"final.txt",sep="\t",quote=FALSE,row.names=FALSE)
