# dependencies
library(dplyr)
library(ggplot2)

# data loading
mpg_data <- read.csv("data/MechaCar_mpg.csv")
suspension_data <- read.csv("data/Suspension_Coil.csv")

# DELIVERABLE 1 - MPG Linear Regression
mpg_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_data)

summary(mpg_regression)

# DELIVERABLE 2 - PSI Stats, Total and By Production Lot
total_summary <- suspension_data %>% 
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- suspension_data %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# DELIVERABLE 3 - T-Tests on Suspension Coils
t.test(suspension_data$PSI, mu=1500)
