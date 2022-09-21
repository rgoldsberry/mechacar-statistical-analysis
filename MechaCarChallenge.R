# dependencies
library(dplyr)
library(ggplot2)

# data loading
mpg_data <- read.csv("data/MechaCar_mpg.csv")
suspension_data <- read.csv("data/Suspension_Coil.csv")

# DELIVERABLE 1 - MPG Linear Regression
mpg_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_data)

summary(mpg_regression)