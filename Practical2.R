#Q1. load the dataframe

managers <- read.csv("C:\\Users\\IbukunoluwaAlade-STU\\OneDrive - Atlantic TU\\Documents\\data_msc\\managers.csv")
View(managers)

managers_data <- read.csv("managers.csv")
managers_data

#Q2. checking for missing values using mice

install.packages("mice")
library(mice)
windows(20,10)  #put it in a new window
md.pattern(managers_data)
managers_data

#Q2. checking for missing values using vim

install.packages("VIM")
library(VIM)
windows(20,10)
missing_values <- aggr(managers_data, prop = FALSE, numbers = TRUE)

summary(missing_values)

#Q2. Checking how many missing values in the dataset

is.na(managers_data)
sum(is.na(managers_data))

#Q3. Changing the date field to date variable

class(managers_data$Date)  # checking what the date
#managers_data$Date <- as.Date(managers_data$Date,  format= "%Y-%M-%D")
converted_date <- as.Date(managers_data$Date,  format= c( "%Y-%d-%m", "%m/%d/%y",  "%Y-%d-%m"))
class(managers_data$Date)
converted_date
managers_data$Date <- converted_date
class(managers_data$Date)
managers_data

#Q4. select records between 15-10-18 and 01-11-18

managers_filtered <- subset(managers_data, managers_data$Date >= as.Date("2018-10-15") & managers_data$Date <= as.Date("2018-11-01"))
managers_filtered

# lecturer code

startdate <- as.Date("2018-10-15")
enddate <- as.Date("2018-11-01")
new_data <- managers_data[managers_data$Date >= startdate & managers_data$Date <= enddate,]
new_data

new_data2 <- managers_data[managers_data$Date >= startdate & managers_data$Date <= enddate,1:4] #the 1:4 prints column 1 to 4
new_data2


#Q5. drop the q3 and q4 attributes (variables) from the data frame

new_dropped <- subset(managers_data, select = c(-Q3,-Q4))
new_dropped

      # lecturer's code
      new_dropped2 <- managers_data[, c(-8,-9)]
      new_dropped2
      
      new_picked <- managers_data[, c(1:7,10:13)]
      new_picked
        
    
      
#Q6. select 
      

#Q7. RANDOM sample 3 WITHOUT repeating
      my_sample3 <- managers_data[sample(2:nrow(managers_data),3, replace = FALSE),]
      my_sample3
      
#Q8  random sample 10 with repeating
      
      my_sample10 <- managers_data[sample(2:nrow(managers_data),10, replace = TRUE),]
      my_sample10
      
      #save the random sample as a csv file
      write.csv(my_sample10, file = "random_sample.csv")



#Q9  sort managers data frame by age
      
      new_dataAge <- managers_data[order(managers_data$Age),]
      new_dataAge
      
#Q10 sort managers data frame by gender then by age within each gender
      
      new_datagendage <- managers_data[order(managers_data$Gender,managers_data$Age),]
      new_datagendage
      
      