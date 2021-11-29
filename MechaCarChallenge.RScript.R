### Deliverable 1 ###

# Load the dplyr package.
library(dplyr)

# Import the data.
car_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# View dataframe.
car_data

# Perform linear regression.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_data)

# Generate summary.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_data))

### Deliverable 2 ###

# Import the suspension coil data.
suspension_coils <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
suspension_coils

# Create a total summary dataframe using the summarize() function.
summarize_sc <- suspension_coils %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI),SD_PSI=sd(PSI), .groups = 'keep')
summarize_sc

# Create a lot_summary dataframe that uses group_by() and summarize to demonstrate summary stats by lot.
summarize_lot <- suspension_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI),SD_PSI=sd(PSI), .groups = 'keep')
summarize_lot

# Conduct a t-test to compare the sample mean w/the population mean (of 1500).
t.test(log10(suspension_coils$PSI),mu=mean(log10(suspension_coils$PSI)))

## Conduct 3 additional t-tests for each manufacturing lot.
# Lot 1
lot_1 <- subset(suspension_coils, Manufacturing_Lot == 'Lot1')
lot_1
t.test(log10(lot_1$PSI),mu=mean(log10(suspension_coils$PSI)))

# Lot 2
lot_2 <- subset(suspension_coils, Manufacturing_Lot == 'Lot2')
lot_2
t.test(log10(lot_2$PSI),mu=mean(log10(suspension_coils$PSI)))

# Lot 3
lot_3 <- subset(suspension_coils, Manufacturing_Lot == 'Lot3')
lot_3
t.test(log10(lot_3$PSI),mu=mean(log10(suspension_coils$PSI)))




