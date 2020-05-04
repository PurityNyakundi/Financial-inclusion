library(tidyverse)
data2 %>%
  mutate(newid = as.character(paste((uniqueidbank_account),sep="X")))
chack<-paste(data2$uniqueid,data2$country,sep = " x ")
head(
  chack,20
)
bank_account = data2$bank_account
sub<-cbind(chack,bank_account)
write.csv(sub,file = "any.csv",row.names = F)
rer<-read.csv("any.csv",header = T)
head(rer)
View(rer)
?paste

read<-read.csv("SubmissionFile.csv",stringsAsFactors = F)
dim(read)
str(read)
