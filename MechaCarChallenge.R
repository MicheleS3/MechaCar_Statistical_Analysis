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

