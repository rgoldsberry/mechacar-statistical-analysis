# mechacar-statistical-analysis
Data Analysis Bootcamp - Week 15

## Overview
The purpose of this repository is to calculate statistics for AutosRUs and their new prototype, the MechaCar. We'll use the R script [MechaCarChallenge](MechaCarChallenge.R) to calculate these statistics and then put analyses of the results in to this readme file.

## Resources
[MPG Data](data/MechaCar_mpg.csv)<br>
[Suspension Coil Data](data/Suspension_Coil.csv)

## Linear Regression to Predict MPG

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The two variables that pass the standard 5% confidence level cutoff are vehicle length and ground clearance. While there is some influence from vehicle weight there isn't enough data to say with confidence that it has a statistically significant effect on MPG.

### Is the slope of the linear model considered to be zero? Why or why not?
Our overall regression p-value is incredibly small (5.35E-11), meaning that we have enough data to reject the null hypothesis and we accept the alternative hypothesis that the slope of the linear model is non-zero.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This model has an R-squared value of 71.5%, meaning that it does a decent job at predicting MPG. We would like to see that number be higher for more comfort, but as it stands, the current model will predict a future answer accurately around 70% of the time.