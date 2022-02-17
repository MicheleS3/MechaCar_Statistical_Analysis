# MechaCar_Statistical_Analysis

## Overview of the Project:

Here is a list of the deliverable requirements:

- Deliverable 1: Linear Regression to Predict MPG
- Deliverable 2: Summary Statistics on Suspension Coils
- Deliverable 3: T-Test on Suspension Coils
- Deliverable 4: Design a Study Comparing the MechaCar to the Competition

## Purpose for this Project:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

![Deliverable 1 summary results](https://user-images.githubusercontent.com/89753083/154557321-94d890db-bd6b-4891-96d3-dc3720f40be3.PNG)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The variables that provide the greatest amount of random variance are ground_clearance and vehicle_lenght.

### Is the slope of the linear model considered to be zero? Why or why not?

The slope is not considered to be zero. Looking at the p- value we can determine that it is less than 0.05.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The R-Squared is 71% which means that we will predict mpg value a 71% correctly. There are other variables that are not factored in our dataset that also contributes to the mpg variabilitly.

## Summary Statistics on Suspension Coils

![Deliverable 2 summary results](https://user-images.githubusercontent.com/89753083/154562357-7d3e9eae-68de-4727-9ec6-e162bdf84609.PNG)

![Deliverable 2 lot summary results](https://user-images.githubusercontent.com/89753083/154562483-f3b86aa7-1da4-456b-a0e3-3efc03034b1d.PNG)

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The lot summary shows that while manufacturing Lots 1 and 2 meet the design specifications and have variances under 100 PSI, Lot 3 does not meet the design specifications as its variance is much over the 100 PSI limit.

## T-Tests on Suspension Coils

![Deliverable 3 t test all results](https://user-images.githubusercontent.com/89753083/154564159-6851cea0-4ea4-4cac-a332-5940ad876d99.PNG)

A review of the results of the T-test for the suspension coils across all manufacturing lots shows that they are not statistically different from the population mean, and the p-value is not low enough (0.06028) for us to reject the null hypothesis.

![Deliverable 3 t test Lot1 results](https://user-images.githubusercontent.com/89753083/154564332-b118fa59-467f-46c4-bdb6-1ca51c7a1e0b.PNG)

Lot 1 shows it's not statistically different from the population mean, and the p-value is not low enough (1) for us to reject the null hypothesis.

![Deliverable 3 t test Lot2 results](https://user-images.githubusercontent.com/89753083/154564534-4589c399-c4f9-43db-ae69-7361934256b6.PNG)

Lot 2 shows it's not statistically different from the population mean, and the p-value is not low enough (0.6072) for us to reject the null hypothesis.

![Deliverable 3 t test Lot3 results](https://user-images.githubusercontent.com/89753083/154564675-2af41eeb-ff51-44df-b3ea-2002e9a0ba5f.PNG)

Lot 3 shows it's slightly statistically different from the population mean, and the p-value is just low enough (0.04168) for us to REJECT the NULL hypothesis. This lot may need to be re-evaluated, and other variables can be reviewed to understand the variance.

## Study Design: MechaCar vs Competition

To quantify how the MechaCar performs against the competition, an independent t-test could be used to compare the safety ratings of MechaCar against the competition. An independent t-test could be used because it will compare the means of the two different groups, MechaCar and the competition, to determine whether the associated population means are significantly different. To run this statistical test, ordinal data on the safety ratings for each group is needed. The null hypothesis would be that there is no difference in safety ratings between MechaCar and the competition and the alternative hypothesis is that there is a difference in the safety ratings between those two groups. Further analysis could be done using the results from the t-test.
