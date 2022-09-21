# mechacar-statistical-analysis
Data Analysis Bootcamp - Week 15

## Overview
The purpose of this repository is to calculate statistics for AutosRUs and their new prototype, the MechaCar. We'll use the R script [MechaCarChallenge](MechaCarChallenge.R) to calculate these statistics and then put analyses of the results in to this readme file.

## Resources
[MPG Data](data/MechaCar_mpg.csv)<br>
[Suspension Coil Data](data/Suspension_Coil.csv)

## Linear Regression to Predict MPG

![LinearRegression](images/MPG_Multiple_LinearRegression.PNG)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The two variables that pass the standard 5% confidence level cutoff are vehicle length and ground clearance. While there is some influence from vehicle weight there isn't enough data to say with confidence that it has a statistically significant effect on MPG.

### Is the slope of the linear model considered to be zero? Why or why not?
Our overall regression p-value is incredibly small (5.35E-11), meaning that we have enough data to reject the null hypothesis and we accept the alternative hypothesis that the slope of the linear model is non-zero.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This model has an R-squared value of 71.5%, meaning that it does a decent job at predicting MPG. We would like to see that number be higher for more comfort, but as it stands, the current model will predict a future answer accurately around 70% of the time.

## Summary Statistics on Suspension Coils

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
In total, yes, the suspension coils fall below the 100 pounds per square inch variance threshhold, with a variance of 62.3.<br>
![Total_Summary](images/PSI_TotalSummary.PNG)

However, when looking at individual manufacturing lots, it seems like Lot 1 and Lot 2 have much more consistency, with variances of 1 and 7, respectively and most of the variance in the total manufacturing group is coming from Lot 3, which has a variance of 170 PSI. Lot 3 does not meet the design specifications.<br>
![Lot_Summary](images/PSI_LotSummary.PNG)