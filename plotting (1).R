Dosage<- c(20,30,40,45,60)
DrugA<- c(16,20,27,40,60)
DrugB <- c(15,18,25,31,40)
Opinion <- c("Excellent", "No effect","Some effect", "No effect", "Some effect")

drug<- data.frame(Dosage,DrugA,DrugB,Opinion)
drug
View(drug)

names(drug)[1] <- "Dosage (ml)"
names(drug)[2] <- "Drug A"
names(drug)[3] <- "Drug B"
View(drug)
plot(drug)
#plotting in the separate windows
windows(20,10)
plot(drug)

plot(Dosage, type = "o", col = "blue")
plot(Dosage, type = "b", col = "green")
