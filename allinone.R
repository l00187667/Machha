
x <-2
x
y <-5
y


a <- b <- 7
a
b


a
rm (a)
a


x <- 5
class(x)

is.numeric(x) 


i<-5L
i
is.integer(i)

x1<- 4L
class(x1)
x2<- 2.8
class(x2)
x3<- x1*x2
x3
class(x3)

x4 <- 2L
x5 <- 5L

x6<- x4/x5
class(x6)

x <- "data"
x
y <- factor("data")
y

nchar (x)
nchar ("hello")
nchar (3)
nchar (505)
nchar(y)

date1 <-as.Date("2019-03-08")
date1
class(date1)
as.numeric(date1)

date2 <- as.POSIXct("2019-03-08 09:00")
class(date2)
as.numeric (date2)

TRUE * 5
FALSE * 5

k <- TRUE
class(k)
is.logical(k)
install.packages("swirl") 
library("swirl") 
swirl() 

x <- c(3, 12, 7)
y <- c(4, 9, 11)
x
y

z <- x + y
z

x <- x + 2
y <- y + 50
x
y

sum(x)
mean(y)

n = c(1,2,NA,3,4)
sum(n,na.rm = TRUE)

typeof(n)
typeof(x)

x > y
x < y
x != y
x == y

u <- c(5:20)
u
u <- append(u,letters[1])
u

u <- append(u,letters[1:5])
u

#week 2
x <-c(10.4, 5.6, 3.1, 6.4, 21.7)
y <-c(x, 0, x)
z <-2*x + y + 1
x
y
z

min(z)
max(z)
range(z)
length(z)
sum(z)

prod(z)

mean(z)
var(z)
sort(z)
sorted_z <- sort(z)
sorted_z
class(sorted_z)
typeof(sorted_z)

sorted_z1 <- sort(z,decreasing = TRUE)
sorted_z1

1:30
30:1
2*1:10

seq(from, to, by, length.out , along.with , ...)
seq(1,20)
seq(20,1)
seq(1,20,by=2)
seq(1,20, length.out=30)
2*seq(1,20)
seq(-5, 5, by=.2) -> s3
s3
s4 <-  seq (length=51, 5, by=.2)
s4

#Generate a sequence seq3 
seq3 <- seq(from=-100, to=100, by=.6)
seq3
mean((seq3))

# Sort seq3 in descending order
sort(seq3, decreasing = TRUE)

y <- c(1, 4, 6, 9)
x <- seq(from=0, to=20, along.with=y)
x


# rep function repeate
x <-c(10.4, 5.6, 3.1, 6.4, 21.7)
s5 <-rep(x, times=5)
s5

s6 <-rep(x, each=5)
s6

#logical vectors
temp <- x > 13
temp

is.na(s6) 
z <-c(1:4,NA)
result <-is.na(z)
result

x1 <- x == NA
x1
is.na(x)


x <-c(10.4, 5.6,0.0, 3.1, 6.4, 21.7)
y <-x[!is.na(x)]
y

(x+1)[(!is.na(x)) & x>0] -> z
z

#Positive integral vectors
x[1:10]
x[6]

#Negative integral vectors
y <-x[-(1:4)]
y

#Factor vectors
vec1 <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Hurling", 
          "Basketball", "Tennis", "Cricket", "Lacrosse")
vec1

vec2 <-c(vec1, "Hockey", "Lacrosse", "Hockey", "Water Polo", "Hockey", "Lacrosse")
vec2

vec3 <-vec2 [c(1,3,6)]
vec3

vec3_factor <-as.factor(vec3)
vec3_factor
class(vec3)

factor (x=c("Degree", "High School", "Masters", "Doctorate"), levels = c("High School", "Degree", "Masters", "Doctorate"), ordered = TRUE)

Subject<-c(1:7)
Gender<-c('Male','Male', 'Male',NA,'Female', 'Female', 'Female')
Age<- c(23,34,32,54,65,45,35)
Weight<- c(67.5, NA, 63.7, 56.8, 89.9, 87.5, 77.5)
Trial <-data.frame(Subject, Gender, Age, Weight)
View(Trial)


Trial[4,3]
Trial[,3]
install.packages("data.table")
library(data.table)
setnames(Trial, old= 'Subject', new='Participant')
View(Trial)

Trial[!complete.cases(Trial),]



#Set weight of participant 2 to 65 

Trial$Weight[Trial$Participant==2]



Trial$Weight [Trial$Participant==2] <- 65.0

#set gender of participant 4 to 'Female'

Trial$Gender [Trial$Participant ==4] <- 'Female'
# This script builds the managers dataset
# and populates it with data
# Refer to the notes on Blackboard for further information
# on this practical


# Enter data into vectors before constructing the data frame
Manager <- c(1:5)
Date <- c("2018-15-10", "2018-01-11", "2018-21-10", "2018-28-10", "2018-01-05")
Country <- c("US", "US", "IRL", "IRL", "IRL")
Gender <- c("M", "F", "F", "M", "F")
Age <- c(32, 45, 25, 39, 99) # 99 is one of the values in the age attribute - will require recoding
Q1 <- c(5, 3, 3, 3, 2)
Q2 <- c(4, 5, 5, 3, 2)
Q3 <- c(5, 2, 5, 4, 1)
Q4 <- c(5, 5, 5, NA, 2) # NA is inserted in place of the missing data for this attribute
Q5 <- c(5, 5, 2, NA, 1)
managers_data <- data.frame(Manager, Date, Country,Gender,Age,Q1,Q2,Q3,Q4,Q5)
View(managers_data)

managers_data[1:5,]
str(managers_data)



# Recode the incorrect 'age' data to NA

managers_data$Age[managers_data$Age == 99] <- NA
managers_data



#managers_data[1:3,]



# drop Manager column



managers_data_1 <- subset(managers_data, select = -Manager)
managers_data_1

managers_data_2 <- subset(managers_data, select = -1)
managers_data_2



managers_data <- managers_data[,c(2:10)]
managers_data





str(managers_data)






# Create a new attribute called AgeCat and set valuess


managers_data$AgeCat <-5
managers_data

managers_data$AgeCat <- c(1,2,3,4,5)
managers_data

managers_data <- managers_data[,c(1:9)]
managers_data

# in AgeCat to the following if true:
# <= 25 = Young
# >= 26 & <= 44 = Middle Aged
# >= 45 = Elderly
# We will also recode age 'NA' to Elder
managers_data$AgeCat[managers_data$Age <= 25] <- "Young"
managers_data$AgeCat[managers_data$Age >= 26 & managers_data$Age <= 44] <- "Middle Aged"
managers_data$AgeCat[managers_data$Age >= 45] <- "Elder"
managers_data$AgeCat[is.na(managers_data$Age)] <- "Elder"
managers_data

class(managers_data$AgeCat)
# Recode AgeCat so that is ordinal and factored with the
# order Young, Middle aged, Elder
# We'll store the ordinal factored data in variable 'AgeCat'
managers_data$AgeCat <- factor(managers_data$AgeCat, order = TRUE, levels = c("Young", "Middle Aged", "Elder"))
#factor(managers_data$AgeCat, order = TRUE, levels = c("Young", "Middle Aged", "Elder"))

class(managers_data$AgeCat)
# Replace managers's AgeCat attribute with newly ordinal foctored data
#managers_data$AgeCat <- AgeCat
#managers_data


# contains a summary of each row






managers_data$summary_col <- managers_data$Q1 + managers_data$Q2 + managers_data$Q3 + managers_data$Q4 + managers_data$Q5
managers_data

managers_data <- managers_data[, c(1:10)]
managers_data

summary_col <- managers_data$Q1 + managers_data$Q2 + managers_data$Q3 + managers_data$Q4 + managers_data$Q5
managers_data <- data.frame(managers_data, summary_col)
managers_data

#week3

# -------------------------------------------------------------------------------
# Dealing with missing data 
# -------------------------------------------------------------------------------

# Load the managers data frame first
managers_data <- read.csv("managers.csv")
managers_data



# removes any rows that contains NA - listwise deletion --
# store the data frame to "new_data"







new_data <- na.omit(managers_data)
new_data





# Use complete.cases to show rows where data is available
# use dataframe complete_data







complete_data <- complete.cases(managers_data)
complete_data

# Show sum ofcompleted rows







sum(complete_data)



# list the rows that do not have missing values
# Note that the ',' and no number inside square brackets means "all columns"



complete_data <- managers_data[complete.cases(managers_data),]
complete_data
nrow(complete_data)

# List rows with missing values




managers_data[!complete.cases(managers_data),]

#store to new dataframe 'missing data'


missing_data <- managers_data[!complete.cases(managers_data),]
missing_data
nrow(missing_data)

# Find sum of all missing values in the age attribute
sum(is.na(managers_data$Age))

# Find the mean of missing values from the Age attribute
mean(is.na(managers_data$Age))

# Find the mean of rows with no incomplete data
# Note that we dont need to add the ',' as we're only
# looking for an overall mean of rows with missing values
mean(!complete.cases(managers_data))

install.packages("mice")
library(mice)
md.pattern(managers_data)
managers_data

# USe VIM package to show missing values
install.packages("VIM")
library(VIM)
missing_values <- aggr(managers_data, prop = FALSE, numbers = TRUE)
# Show summary of the contents of missing_values
summary(missing_values)
# See this link for more info https://www.rdocumentation.org/packages/VIM/versions/4.8.0/topics/aggr 

# View missing data as a matrix
# where red indicates a missing value
# using a heatmap
# And other colours represent identical answers
matrixplot(managers_data)

# Show 1 = missing and 0 = okay for all data 
# and convert to a data frame to create a correlation of missing data
missing_values<-as.data.frame(abs(is.na(managers_data)))
head(missing_values)
# Examine each element in missing values and only
# store their output if value >0
# Used to create a correlation matrix between missing values
correlation_matrix<-missing_values[(apply(missing_values, 2, sum) > 0)]
correlation_matrix
# Show correlation matrix between extracted values
# 1 = perfect positive correlation, -1 = perfect negative correlation
# and 0 = no correlation (no link)
cor(correlation_matrix)

# Merging datasets ------------------------------------------------------
#
# Answers to practical problem 3 - merging datasets
#
# -----------------------------------------------------------------------

# Read in the datasets first
# Data needs to be in the working directory
# Move data from blackboard to WD 
# and ensure that both csv files are in files window
# in RStudio
new_managers_data <- read.csv("MoreData.csv")
managers_data <- read.csv("managers.csv")



# check the structure of both dataset







str(new_managers_data)
str(managers_data)

# Show headers of both dataset




names(managers_data)
names(new_managers_data)

# update new_managers_data with matching column names 






new_managers_data <- new_managers_data[,c("Date", "Country", "Gender", "Age", "Q1", "Q2", "Q3", "Q4", "Q5")]
new_managers_data


# Confirm that both data frames are identical
head(managers_data)
head(new_managers_data)




# We can't use rbind() function yet
# because of structure mismatch
rbind(managers_data, new_managers_data)



# ------Calculate additional values and add to data frame --------------- 

# we can now calculate AgeCat values
# and add to new_managers_data dataframe








attach(new_managers_data)
new_managers_data$AgeCat[Age >= 45] <- "Elder"
new_managers_data$AgeCat[Age >= 26 & Age <= 44] <- "Middle Aged"
new_managers_data$AgeCat[Age <= 25] <- "Young"
new_managers_data$AgeCat[is.na(Age)] <- "Elder"
detach(new_managers_data)

new_managers_data

# create columns Answer.total and  mean.value for new managers data frame




attach(new_managers_data)
new_managers_data$Answer.total <- Q1 + Q2 + Q3 + Q4 + Q5
new_managers_data$mean.value <- rowMeans(new_managers_data[5:9])
detach(new_managers_data)


head(new_managers_data)

# ------ Convert date variables to Date type --------------------------- 

# Now we need to convert the date field to date
# in both data frames
str(managers_data)
str(new_managers_data)

str(managers_data$Date)
str(new_managers_data$Date)


# format Date to Date data type

converted_date <- as.Date(managers_data$Date,format = c("%Y-%d-%m", "%m/%d/%Y", "%Y-%d-%m"))
converted_date
class(converted_date)
managers_data$Date <- converted_date
managers_data$Date


formatted_date <- as.Date(new_managers_data$Date, format = "%m/%d/%Y")
formatted_date
class(formatted_date)
new_managers_data$Date <- formatted_date



head(managers_data)
head(new_managers_data)



# ------------------ Merge data frames vertically --------------------------
# Now we can combine both datasets with
# rbind function
managers_data <- rbind(managers_data, new_managers_data)
managers_data




























managers_data_1 <- managers_data[,2:13]



managers_data_1 <- rbind(managers_data_1, new_managers_data)
managers_data
str(managers_data_1)
head(managers_data_1)

# This script builds the managers dataset
# and populates it with data
# Refer to the notes on Blackboard for further information
# on this practical


# Enter data into vectors before constructing the data frame
Manager <- c(1:5)
Date <- c("2018-15-10", "2018-01-11", "2018-21-10", "2018-28-10", "2018-01-05")
Country <- c("US", "US", "IRL", "IRL", "IRL")
Gender <- c("M", "F", "F", "M", "F")
Age <- c(32, 45, 25, 39, 99) # 99 is one of the values in the age attribute - will require recoding
Q1 <- c(5, 3, 3, 3, 2)
Q2 <- c(4, 5, 5, 3, 2)
Q3 <- c(5, 2, 5, 4, 1)
Q4 <- c(5, 5, 5, NA, 2) # NA is inserted in place of the missing data for this attribute
Q5 <- c(5, 5, 2, NA, 1)
managers_data <- data.frame(Manager, Date, Country,Gender,Age,Q1,Q2,Q3,Q4,Q5)
View(managers_data)

managers_data[1:5,]
str(managers_data)



# Recode the incorrect 'age' data to NA

managers_data$Age[managers_data$Age == 99] <- NA
managers_data



#managers_data[1:3,]



# drop Manager column



managers_data_1 <- subset(managers_data, select = -Manager)
managers_data_1

managers_data_2 <- subset(managers_data, select = -1)
managers_data_2



managers_data <- managers_data[,c(2:10)]
managers_data





str(managers_data)






# Create a new attribute called AgeCat and set valuess


managers_data$AgeCat <-5
managers_data

managers_data$AgeCat <- c(1,2,3,4,5)
managers_data

managers_data <- managers_data[,c(1:9)]
managers_data

# in AgeCat to the following if true:
# <= 25 = Young
# >= 26 & <= 44 = Middle Aged
# >= 45 = Elderly
# We will also recode age 'NA' to Elder

managers_data$Age >= 45

managers_data$AgeCat[managers_data$Age >= 45] <- "Elder"


managers_data$AgeCat[managers_data$Age >= 26 & managers_data$Age <= 44] <- "Middle Aged"
managers_data$AgeCat[managers_data$Age <= 25] <- "Young"
managers_data$AgeCat[is.na(managers_data$Age)] <- "Elder"
managers_data

class(managers_data$AgeCat)
# Recode AgeCat so that is ordinal and factored with the
# order Young, Middle aged, Elder
# We'll store the ordinal factored data in variable 'AgeCat'
managers_data$AgeCat <- factor(managers_data$AgeCat, order = TRUE, levels = c("Young", "Middle Aged", "Elder"))

class(managers_data$AgeCat)
# Replace managers's AgeCat attribute with newly ordinal foctored data
#managers_data$AgeCat <- AgeCat
#managers_data

# Create a new column called 'summary_col' that
# contains a summary of each row
managers_data$summary_col <- managers_data$Q1 + managers_data$Q2 + managers_data$Q3 + managers_data$Q4 + managers_data$Q5
managers_data

managers_data <- managers_data[, c(1:10)]
managers_data

summary_col <- managers_data$Q1 + managers_data$Q2 + managers_data$Q3 + managers_data$Q4 + managers_data$Q5
managers_data <- data.frame(managers_data, summary_col)
managers_data


# Calculate mean value for each row
mean_value <- rowMeans(managers_data[5:9])

# Add mean_value to end of managers data frame
managers_data <- data.frame(managers_data, mean_value)

# Show data frame contents
managers_data

# Change the name of this column to "mean value"
names(managers_data)[12] <- "mean value"

# Change name of summary_col to "Answer total"
names(managers_data)[11] <- "Answer total"

# Show 
str(managers_data)

# Show a summary for the numerical values
# It isnt possible to summarise a column
# where NA is present so I've removed NA values 
# using "na.rm = TRUE"
# Selected columns are listed inside a vector
# Note the "," inside the square brackets 
# which indicates I am working on columns and not rows
help("colSums")
column_summary <- colSums(managers_data[,c(4:9,11:12)], na.rm = TRUE)
column_summary
# This row cannot be added to the data frame as there are missing 
# values for some columns, and the row must match the data frame 
# structure

# Deleting attributes from data


managers <- read.csv("RPrograming_2025/managers (3).csv")
managers

# This command shows all attributes where Q3 or Q4 are contained
# The ! operator reverses this choice 
include_list <- names(managers) %in% c("Q3", "Q4") 
include_list
# This list can be used to extract this data 
new_data <- managers[(include_list)]
new_data


# Using the subset function
# to extract all records from my_data where age > 35 or age < 24. Only select the 
# listed attributes

new_data <- subset(managers, managers$Age >= 35 | managers$Age < 24, select = c(Q1, Q2, Q3, Q4)) 
new_data



#How would we select a subset of managers called new_managers where gender = M 
#and age > 25. Show all attributes between Gender and Q4 only
attach(managers)
new_managers <- subset(managers, Gender = 'M' & Age>25, select= c(4:9))
new_managers



# Selecting a random sample from my_data my_sample <-

my_sample <- managers[sample(1:nrow(managers), 3, replace = FALSE),] 
my_sample

my_sample <- managers[sample(1:nrow(managers), 3, replace = TRUE),] 
my_sample

# Refer to notes on blackboard for more information
# Random sampling and subsets

# Load managers dataset first before completing this code
# Download relevant R code from GitHub
# Load managers dataset and replace any missing variables
# with NA

managers_data <- read.csv("RPrograming_2025/managers (3).csv")
managers_data
sum(is.na(managers_data))

# Convert current date factored variable to date
# it is currently using mm/dd/yy format
# so we use this same structure to make conversion to date type
managers_data$Date
class(managers_data$Date)

converted_date <- as.Date(managers_data$Date,format = c("%Y-%d-%m", "%m/%d/%Y", "%Y-%d-%m"))
converted_date
managers_data$Date <- converted_date
managers_data$Date
# Examine the structure of managers date field
str(managers_data$Date)
class(managers_data$Date)

# Select records within 15-10-18 and 01-11-18

startdate <- as.Date("2018-10-15")
enddate <- as.Date("2018-11-01")
new_data <- managers_data[managers_data$Date >= startdate & managers_data$Date <= enddate,]
new_data

# Dropping attributes from data

# This command shows all attributes where the names Q3 or Q4 are contained

include_list1 <- managers_data[,8:9]
include_list1




#Drop the Q3 and Q4 attributes (variables) from the data frame
include_list2 <- managers_data[,c(1:7,10:13)]
include_list2


#This command shows all attributes where the names Q3 or Q4 are contained
names(managers_data) 
#help('%in%')
include_list3 <- names(managers_data) %in% c("Q3", "Q4")
include_list3
new_data_1 <- managers_data[(include_list3)]
new_data_1



#Drop the Q3 and Q4 attributes (variables) from the data frame
names(managers_data) 
#help('%in%')
include_list_4 <- names(managers_data) %in% c("X", "Date", "Country","Gender",
                                              "Age", "Q1", "Q2" , "Q5", 
                                              "AgeCat","Answer.total","mean.value")
include_list_4
new_data_2<- managers_data[(include_list_4)]
new_data_2


# This keeps everything apart from the 2 values 'Q3' and 'Q4'
new_data <- managers_data[,c(-8, -9)]
new_data

# Using the subset function
# to extract all records from managers where age > 35 or age < 24. 
# Only select the listed attributes Q1, Q2, Q3, Q4

attach(managers_data)
new_data <- subset(managers_data, Age >= 35 | Age < 24, select = c(Q1, Q2, Q3, Q4))
new_data
detach(managers_data)

# Select a subset of managers
# where gender = M and age > 25. Only show records 
# from Gender to Q4 inclusive

new_data <- subset(managers_data, Gender == "M" & Age > 25, select = Gender:Q4)
new_data

# Try this out ....
new_managers_data <- subset(managers_data, Gender == "M" & Age > 25)
new_managers_data


# Random sampling --------------------------------------------------------
# Selecting a random sample of 3 records from managers
my_sample <- managers_data[sample(1:nrow(managers_data), 3, replace = FALSE),]
my_sample

# Extracting 10 random samples from managers_data
# Adds number to represent no of iterations taken from that record

my_sample <- managers_data[sample(1:nrow(managers_data), 10, replace = TRUE),]
my_sample
# Save the random sample as a csv file
# called random sample.csv
write.csv(my_sample, file = "random sample.csv")

# Sorting data ------------------------------------------------------------
#Sorting data by age
attach(managers_data)
new_data <- managers_data[order(Age),]
new_data

# Sort by Gender and then age within each gender

new_data <- managers_data[order(Gender, Age),]
new_data
detach(managers_data)

# Save the random sample as a csv file
# called random sample.csv
write.csv(my_sample, file = "random sample.csv")

# A simple example
# Build a dataframe first using 4 vectors
dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
opinion <- c("Excellent", "No effect", "Some effect", "No effect", "Some effect")

# Create the dataframe from vectors
drugs <- data.frame(dose, drugA, drugB, opinion)
drugs
str(drugs)

# Difficult to understand a general plot of data
plot(drugs)

# Show drugs data with circles for data points, joined with 
# a blue line
attach(drugs)
#windows(16,10)
plot(dose, type = "o", col = "blue")
plot(dose, type = "b", col = "green")

? plot

# option type="b" indicates that both points and lines should be plotted.

dose
drugA




plot(drugs$opinion, drugs$drugA, type = "b", col = "green")
#opinion <- as.factor(opinion)
#class(opinion)
#str(drugs)

# If we want to plot categorical data then convert to factor first

drugs$opinion <- as.factor(drugs$opinion)
class(drugs$opinion)
str(drugs)

plot(drugs$opinion, drugs$drugA, type = "b", col = "green")

plot(drugs$opinion)



#las = 0: The labels are always parallel to the axis.
#las = 1: The labels are always horizontal.
#las = 2: The labels are always perpendicular to the axis.
#las = 3: The labels are always vertical

plot(drugs$opinion, las = 2)

# par function - customise many features of a graph 
# including (fonts, colours, axes, and labels) 
# We can also plot more than 1 line on the chart using par 



windows(16,10)
plot(dose, drugB, type = "b")

# lty = line type
# lwd = line width

# lty=2 dashed line
# pch=17 solid triangle

plot(dose, drugA, type = "b", lty = 2, pch = 17)



# dotted line, 3 times wider than default 
#Connecting points are filled squares

#lty: Line type (2 creates a dashed line).
#pch: Specifies the plotting character. 
#19 is a solid circle, but you can use other numbers or symbols.
#lwd: Specifies the line width. A higher value makes the line thicker.
#cex: Specifies the character expansion factor.
#A higher value increases the size of the plotting characters.

plot(drugA, type = "b", lty = 3, lwd = 3, pch = 19, cex = 1, ylim = c(0, 100))
title(main = "Drug dosage", col.main = "blue", font.main = 4)


# Graph Drug B with red dashed line and square points







lines(drugB, type = "o", pch = 22, lty = 2, col = "red")

# Now we'll manually edit the chart so that it can automatically change to suitvalues in the vectors

# Calculate range from 0 to max value of drug A and drug B
graph_range <- range(0, drugA, drugB)
graph_range

# Graph drug A using y axis that ranges from 0 to max 
# value in drug A or drug B vector.  Turn off axes and 
# annotations (axis labels) so we can specify them ourself


plot(drugA, type = "o", col = "blue", ylim = graph_range,  axes = FALSE,ann = FALSE)



# Graph Drug B with red dashed line and square points






lines(drugB, type = "o", pch = 22, lty = 2, col = "red")

# Make x axis with ml labels
axis(1, at = 1:5, lab = c("20 ml", "40 ml", "60 ml", "80 ml", "100 ml"))

# Make y axis with horizontal labels that display ticks at 
# every 5 marks. 5*0:graph_range[2] is equivalent to c(0, 5, 10, ..., 60).





axis(2, las = 1, at =  5* 0:graph_range[2])


# Create box around plot
box()

# Label the x and y axes with dark green text
title(xlab = "Dosage (ml)", col.lab = rgb(0, 0.5, 0))
title(ylab = "Drugs", col.lab = rgb(0, 1, 0))

# Create a legend at (1, graph_range[2]) that is slightly smaller 
# (cex) and uses the same line colours and points used by 
# the actual plots 
legend(1, graph_range[2], c("Drug A", "Drug B"), cex = 0.8,
       col = c("blue", "red"), pch = 21:22, lty = 1:2)

# Create a title with a red, bold/italic font
title(main = "Drug dosage", col.main = "red", font.main = 4)




# Complete example of creating a line chart including axes and labels
plot(dose, drugA, type = "b",
     col = "red", lty = 2, pch = 2, lwd = 2,
     main = "Clinical Trials for Drug A",
     sub = "This is hypothetical data",
     xlab = "Dosage", ylab = "Drug Response",
     xlim = c(0, 60), ylim = c(0, 70))




# Example of drug data chart
# Input data
#dose <- c(20, 30, 40, 45, 60)
#drugA <- c(16, 20, 27, 40, 60)
#drugB <- c(15, 18, 25, 31, 40)

# Generates the graph

plot(dose, drugA, type = "b",
     pch = 15, lty = 1, col = "red", ylim = c(0, 60),
     main = "Drug A vs. Drug B",
     xlab = "Drug Dosage", ylab = "Drug Response")
# Add a line
lines(dose, drugB, type = "b",
      pch = 17, lty = 2, col = "blue")
abline(h = c(30), lwd = 1.5, lty = 2, col = "gray")





?mtcars
View(mtcars)
attach(mtcars)

# Include the graphical parameter
# mfrow = c(nrows, ncols) to create a matrix of 
# nrows × ncols plots that are filled in by row
# Here we have 2 rows by 2 cols to display our charts

windows(16,10)
par(mfrow = c(2, 2))
# Our 4 charts
plot(wt, mpg, main = "Scatterplot of wt vs. mpg")
plot(wt, disp, main = "Scatterplot of wt vs. disp")
# hist() includes a default title - use main = "" to suppress it
# or ann = FALSE to suppress all titles and labels
hist(wt, main = "Histogram of wt")
boxplot(wt, main = "Boxplot of wt")
# Reset parameters

detach(mtcars)

# arrange three plots in three rows and one column
attach(mtcars)
windows(16,10)
par(mfrow = c(3, 1))
hist(wt)
hist(mpg)
hist(disp)
detach(mtcars)


install.packages("vcd")

library(vcd)
# table() returns a contingency table, an object 
# of class "table", an array of integer values. 
# Note that the result is always an array, 
# a 1D array if one factor is given

help(table)
View(Arthritis)
attach(Arthritis)

counts <- table(Arthritis$Improved)
counts

windows(16,10)
par(mfrow=c(2,1))

# Simple bar chart
barplot(counts,
        main = "Simple Bar Plot",
        xlab = "Improvement", ylab = "Frequency")

# Horizontal bar plot
barplot(counts,
        main = "Horizontal Bar Plot",
        xlab = "Frequency", ylab = "Improvement",
        horiz = TRUE)

# If categorical variable to be plotted is a factor or ordered factor
# you can create a vertical bar plot quickly with the plot() function
# Produces same bar charts as previous ones using Table function
str(Arthritis)

windows(16,10)
par(mfrow=c(2,1))

plot(Arthritis$Improved, main = "Simple Bar Plot",
     xlab = "Improved", ylab = "Frequency")


plot(Arthritis$Improved, horiz = TRUE, main = "Horizontal Bar Plot",
     xlab = "Frequency", ylab = "Improved")



# Stacked and grouped bar plots


library(vcd)


counts <- table(Arthritis$Improved, Arthritis$Treatment)
counts

# If height is a matrix rather than a vector
# the resulting graph will be a stacked (below) or grouped bar plot

windows(16,10)
barplot(counts,
        main = "Stacked Bar Plot",
        xlab = "Treatment", ylab = "Frequency",
        col = c("red", "yellow", "green"),
        legend = rownames(counts))

# If beside=TRUE, each column of the matrix represents 
# a group, and the values in each column are 
# juxtaposed rather than stacked.

# Grouped bar plot
windows(16,10)
barplot(counts,
        main = "Grouped Bar Plot",
        xlab = "Treatment", ylab = "Frequency",
        col = c("red", "yellow", "green"),
        legend = rownames(counts), beside = TRUE)



# Pie charts
# 2 rows by 2 cols - for 4 charts
windows(16,10)
par(mfrow = c(2, 2))

# First chart - shows title with chart broken into
# slices vector
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = lbls,
    main = "Simple Pie Chart")




# Add percentages to the pie chart
# Calculate each percent for labels on chart
pct <- round(slices / sum(slices) * 100)
# Create label structure using paste function
lbls2 <- paste(lbls, " ", pct, "%", sep = "")
lbls2
# Create the pie chart
pie(slices, labels = lbls2, col = rainbow(length(lbls2)),
    main = "Pie Chart with Percentages")

?rainbow()


# Create a table structure for state.region (showing summary)
state.region
mytable <- table(state.region)
mytable
# Use table headers for chart labels
lbls3 <- paste(names(mytable), "\n", mytable, sep = "")
lbls3
# Create the 3D pie chart
pie(mytable, labels = lbls3,
    main = "Pie Chart from a Table\n (with sample sizes)")




# Histograms
# Set 2 x 2 display
windows(16,10)
par(mfrow = c(2, 2))
# Show simple historgram
# with default values
# Each bin (bar) represents a range 
# Eg first bar is values within (10-15), second is (15-20) etc
hist(mtcars$mpg)

# Show histogram with 12 breaks
# Red bars on chart, x-axis = "Miles per gallon"
# and main heading = "Coloured histogram with 12 bins"
# More breaks = more detail as more space to show data
mtcars$mpg
hist(mtcars$mpg,
     breaks = 12, # no of bins on chart
     col = "red",
     xlab = "Miles Per Gallon",
     main = "Coloured histogram with 12 bins")





# Boxplot ------------------------------------
# Show a boxplot with title and y label
# Lowest line = lower hinge
# Lowest line in box = lower quartile
# Middle line in box = median
# Top line in box = upper quartile
# Top line in chart = upper hinge
windows(16,10)
par(mfrow = c(2, 2))
boxplot(mtcars$mpg, main = "Box plot", ylab = "Miles per Gallon")
# Show stats for the boxplot
boxplot.stats(mtcars$mpg)


mpg
cyl
# Draw a separate boxplot for variable
# mpg for each value of cyl
# using data from mtcars data frame
boxplot(mpg ~ cyl, data = mtcars,
        main = "Car Mileage Data",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon")





