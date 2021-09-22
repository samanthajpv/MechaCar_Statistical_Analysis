# Deliverable 1 - Linear Regression to Predict MPG
library(dplyr) #load dplyr
MechaCar_mpg <- read.csv('MechaCar_mpg.csv', check.names=F, stringsAsFactors=F) #load data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)) #generate summary statistics

# Deliverable 2 - Suspension Coil Variance
Suspension_Coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #load data
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #Overall statistics
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #Lot statistics

# Deliverable 3 - T-Tests on Suspension Coils
t.test(Suspension_Coil$PSI, mu=1500) #Overall t-test
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot1"), mu=1500) #Lot1 t-test
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot2"), mu=1500) #Lot2 t-test
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot=="Lot3"), mu=1500) #Lot3 t-test
