#Assignment
test.dataframe["Survived"] <- a.vector 
SurvivedTest <- test[,2]
SurvivedTest
SurvivedTest[is.finite(x)] <- na
is.na(SurvivedTest) <- sapply (SurvivedTest, is.finite)
colnames(SurvivedTest)[colnames(SurvivedTest) == "Pclass"] <- "Survived"
test["Survived"] <- SurvivedTest
test
test <- test[c(1,12,2,3,4,5,6,7,8,9,10,11)]
Data <- rbind(train,test)
length(unique(Data))
length(unique(Data)) == nrow(Data)
duplicated(Data)
library (dplyr)
is.na(Data)
options(max.print=20000)
Data$Key <- paste(Data$Name, Data$Ticket, sep = "_")
duplicated(Data$Key)
Data_Clean <- filter(Data, !is.na(Survived) )
Data_Clean
max(Data_Clean$Age, na.rm = T)
mean(Data_Clean$Age, na.rm = T)
Data_Clean$Age[is.na(Data_Clean$Age)] <- 30
Data_Clean$Age[Data_Clean$Age < 1] <- 1
by_sex <- group_by(Data_Clean, Sex)
by_age <- group_by(Data_Clean, Age)
summarise(by_sex,mean(Survived))
survival_rate_by_age <- summarise(by_age, mean(Survived))
install.packages("tidyverse")
library(tidyverse) 
ggplot(data=survival_rate_by_age, mapping = aes(x=Age)) + geom_freqpoly(binwidth=3)
plot(Data_Clean$Age, Data_Clean$Parch, col=Data_Clean$Survived+1, pch=Data_Clean$Survived+1)
surviver_data=filter(Data_Clean, Survived==1)
nonsurviver_data=filter(Data_Clean, Survived==0)
plot(surviver_data$Age, surviver_data$Sibsp)
plot(nonsurviver_data$Age, nonsurviver_data$Sibsp)
