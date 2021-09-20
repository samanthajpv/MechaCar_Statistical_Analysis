# Deliverable 1 - Linear Regression to Predict MPG
library(dplyr) #load dplyr
MechaCar_mpg <- read.csv('MechaCar_mpg.csv', check.names=F, stringsAsFactors=F) #load data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)) #generate summary statistics
