#Deliverable 1
library(dplyr)

# Read in the CSV file. 
MechaCar <- read.csv(file="MechaCar_mpg.csv",check.names = F, stringsAsFactors = F)
head(MechaCar)

# Perform linear regression
MechaCar_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)
summary(MechaCar_reg)

#Deliverable 2
# Read in the CSV file. 
Suspension <- read.csv(file="Suspension_Coil.csv",check.names = F, stringsAsFactors = F)
head(Suspension)

#create summary table with multiple columns
total_summary <- Suspension %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
total_summary

lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary

#Deliverable 3

#Create t.test function
t.test((Suspension$PSI), mu=1500)

#Create 3 more t.test functions
t.test((subset(Suspension, Manufacturing_Lot == "Lot1")$PSI), mu=(1500))
t.test((subset(Suspension, Manufacturing_Lot == "Lot2")$PSI), mu=(1500))
t.test((subset(Suspension, Manufacturing_Lot == "Lot3")$PSI), mu=(1500))
