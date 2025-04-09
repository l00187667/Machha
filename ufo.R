#Q1
ufo_data <- read.csv("C:\\Users\\Challa Vignesh\\Desktop\\datascience\\practice\\ufo.csv")
ufo_data
View(ufo_data)

#Q2 , Q3
class(ufo_data$datetime)
ufo_data$datetime <- as.Date(ufo_data$datetime , format= "%m/%d/%Y")
class(ufo_data$datetime)
str(ufo_data)
View(ufo_data)

#Q4
names(ufo_data)[6]="DurationSeconds"
names(ufo_data)[7]="DurationHrsMins"
names(ufo_data)[9]="DatePosted"
View(ufo_data)

#Q5
class(ufo_data$latitude)
ufo_data$latitude <- as.numeric(ufo_data$latitude)

str(ufo_data)
class(ufo_data$latitude)

#Q6
# Load required libraries
library(mice)
library(VIM)

# Visualize missing values
png("missingvars.png")
windows(20,16)
missing_values <- aggr(ufo_data, prop = FALSE, numbers = TRUE)

# Number of complete cases (no missing data)
sum(complete.cases(ufo_data))

# Number of missing datetime entries
sum(is.na(ufo_data$datetime))

#Number of coloumns have missing data 
colSums(is.na(ufo_data))

# Variable with most missing values
missing_counts <- colSums(is.na(ufo_data))
missing_counts[which.max(missing_counts)]

# Percent complete data
( sum(complete.cases(ufo_data)) / nrow(ufo_data) ) * 100

#Q7

ufo_data<- ufo_data[, -12]
ufo_data
View(ufo_data)

# Assuming your UFO data frame is called ufo
# Use na.omit to remove rows with missing values
ufo_clean <- na.omit(ufo_data)
ufo_clean


# Calculate how many rows were deleted
rows_deleted <- nrow(ufo_data) - nrow(ufo_clean)

# Show the result
print(paste("Records deleted:", rows_deleted))
View(ufo_data)
#Q8
# Sort by shape then city
ufo_sorted <- ufo_data[order(ufo_data$shape, ufo_data$city), ]

# Extract specific columns
sorted_ufo_data <- ufo_sorted[, c("datetime", "city", "country", "shape")]

# First 15 rows
head(sorted_ufo_data, 15)

# Structure
str(sorted_ufo_data)
#Q9
# Filter by country == "gb" and shape == "disk"
ufo_gb_disk <- subset(ufo_data, country == "gb" & shape == "disk")

# Check count
nrow(ufo_gb_disk)  # Should be 111
#Q10
# Save files to working directory
write.csv(ufo_data, "modified_ufo.csv", row.names = FALSE)
write.csv(ufo_gb_disk, "ufo_gb.csv", row.names = FALSE)
write.csv(sorted_ufo_data, "sorted_ufo.csv", row.names = FALSE)

# GitHub sync (run these in terminal or Git pane in RStudio, not in R script)
# git add modified_ufo.csv ufo_gb.csv sorted_ufo.csv missingvars.png your_script.R
# git commit -m "Add final data files and script for UFO assessment"
# git push
