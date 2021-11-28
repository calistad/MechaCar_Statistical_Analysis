library(tidyverse)
car_data <- read.csv('MechaCar_mpg.csv') #import dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
   + ground_clearance + AWD, car_data)

model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
            + ground_clearance + AWD, car_data) #create linear model
summary(model)

used_matrix <- as.matrix(car_data[,c("vehicle_length","vehicle_weight","spoiler_angle","ground_clearance","AWD","mpg")]) #Convert data frame into numeric matrix
cor(used_matrix)

sus_data <- read.csv('Suspension_Coil.csv') #import dataset
total_summary <- sus_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- sus_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

t.test(sus_data$PSI, mu=1500)

t.test(subset(sus_data,Manufacturing_Lot=='Lot1')$PSI, mu=1500)
t.test(subset(sus_data,Manufacturing_Lot=='Lot2')$PSI, mu=1500)
t.test(subset(sus_data,Manufacturing_Lot=='Lot3')$PSI, mu=1500)
       