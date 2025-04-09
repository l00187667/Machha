#loading the managers_data
managers_data <- read.csv("C:\\Users\\VigneshChalla-STUDEN\\OneDrive - Atlantic TU\\Documents\\week1-datascience\\managers.csv")
View(managers_data)

#loading the new_managers_data
new_managers_data <- read.csv("C:\\Users\\VigneshChalla-STUDEN\\OneDrive - Atlantic TU\\Documents\\week1-datascience\\MoreData.csv")
View(new_managers_data)

# check the structure of the managers both data sets

str(managers_data)
str(new_managers_data)



# show headers of both datasets

names(managers_data)
names(new_managers_data)

#update the new_managers_data

new_managers<- new_managers_data[,c("Date","Country","Gender","Age","Q1","Q2","Q3","Q4","Q5")]
new_managers
View(new_managers)

new_managers$Agecat <- c(1:253)
View(new_managers)

new_managers$Age<=25
new_managers$Agecat[new_managers$Age<=25]<- "young"

new_managers$Agecat[new_managers$Age>26 & new_managers$Age<=44] <- "Middle aged"

new_managers$Agecat >= 44
new_managers$Agecat[new_managers$Age>=44]<-"Elder"
new_managers$Agecat[is.na(new_managers$Age)]<-"Elder"
# adding the sum of the values(Q1 to Q5) Answer.total
new_managers$Answer.total<- new_managers$Q1+new_managers$Q2+new_managers$Q3+new_managers$Q4+new_managers$Q5
View(new_managers)
new_managers<-subset(new_managers,select=-13)
# finding the rowMean
new_managers$mean.value <- rowMeans(new_managers[5:9])
View(new_managers)
managers_data<-subset(managers_data,select=-1)
View(managers_data)
names(new_managers) [10] <- "AgeCat"
 #class 
class(managers_data$Date)
class(new_managers$Date)
#
new_managers$Date<- as.Date(new_managers$Date, format=c(  "%m/%d/%Y"))
managers_data$Date<- as.Date(managers_data$Date, format=c( "%Y-%d-%m", "%m/%d/%y",  "%Y-%d-%m"))
#merging the datasets
merged_data<-rbind(managers_data,new_managers)
View(merged_data)

