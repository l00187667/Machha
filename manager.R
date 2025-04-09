Manager<-c(1:5)
Date<-c("2018-10-15","2018-01-11","2018-10-21","2018-10-28","2018-05-01")
Country<-c('US','US','IRL','IRL','IRL')
Gender<-c('M','F','F','M','F')
Age<-c(32,45,25,39,99)
q1<-c(5,3,3,3,2)
q2<-c(4,5,5,3,2)
q3<-c(5,2,5,4,1)
q4<-c(5,5,5,NA,2)
q5<-c(5,5,2,NA,1)
Manager
Date
Country
Gender
Age
q1
q2
q3
q4
q5

Manager_data<-data.frame(Manager,Date,Country,Gender,Age,q1,q2,q3,q4,q5)
View(Manager_data)

#first 5 rows
Manager_data[1:5,]

#logical structure
str(Manager_data)

#changing age
Manager_data$Age[Manager_data$Manager==5] <- NA


#drop(different commands)
Manager_data_1<-subset(Manager_data,select = -Manager)
Manager_data_1

Manager_data_2<-subset(Manager_data,select = -1)
Manager_data_2

Manager_data<-Manager_data[,2:10]
Manager_data

str(Manager_data)

#create new attribute 
Manager_data$Agecat<-c(1,2,3,4,5)
View(Manager_data)

#where <25 = “young”
# >26 & < 44 = “Middle aged”
#>45 = “elder”
#NA to Elder

Manager_data$Age<=25
Manager_data$Agecat[Manager_data$Age<=25]<-"Young"

Manager_data$Agecat[Manager_data$Age<=44 & Manager_data$Age>=26]<-"Middle-Aged"

Manager_data$Age>=45
Manager_data$Agecat[Manager_data$Age>=45]<-"Elder"
Manager_data$Agecat[is.na(Manager_data$Age)] <- "Elder"
Manager_data
class(Manager_data$AgeCat)

Manager_data$Agecat <- factor(Manager_data$Agecat, order = TRUE , levels= c("Young","Middle-Aged","Elder"))
View(Manager_data)
class(Manager_data$Agecat)

Manager_data$summary_col <- Manager_data$q1 + Manager_data$q2 + Manager_data$q3 + Manager_data$q4 + Manager_data$q5
Manager_data
View(Manager_data)

#delete the column 
Manager_data_1 <- subset(Manager_data,select = -summary_col)
View(Manager_data_1)

mean_value <- rowMeans(Manager_data[5:9])
mean_value
managers_data <- data.frame(Manager_data,mean_value)
managers_data
View(managers_data)

# rename the column name
names(managers_data) [12] <- "mean values"
managers_data
names(managers_data) [11] <- "Answer Total"

#sum of columns
column_summary<- colSums(managers_data[c(4:9,11:12)],na.rm= TRUE)
column_summary

row_summary<- rowSums(managers_data[c(4:9,11:12)],na.rm= TRUE)
row_summary
