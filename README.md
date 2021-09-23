# MechaCar_Statistical_Analysis
An automotive manufacturing data analysis using R

## Project Overview
AutosRUs' newest prototype, the MechaCar, is currently facing problems. The purpose of this project was to analyze production data to provide insights to the manufacturing team and aid in the progress of building the protoype. Using the R Language, the goal was to perform statistical tests and analysis, as well as to design a study to compare the MechaCar's performance against other manufacturers. 

### Resources
- Data Source:
    - [MechaCar_mpg.csv](https://github.com/samanthajpv/MechaCar_Statistical_Analysis/blob/fde12d242dfd817293b621d9ea9b4c82635e9882/MechaCar_mpg.csv)
    - [Suspension_Coil.csv](https://github.com/samanthajpv/MechaCar_Statistical_Analysis/blob/fde12d242dfd817293b621d9ea9b4c82635e9882/Suspension_Coil.csv)
- Language: R
- Software: RStudio
- [R Script](https://github.com/samanthajpv/MechaCar_Statistical_Analysis/blob/fde12d242dfd817293b621d9ea9b4c82635e9882/MechaCarChallenge.R)

## Results

### A. Linear Regression to Predict MPG
Multiple linear regression was performed to predict the MPG of MechaCar prototypes. For the purpose of this project, the significance level chosen was 0.05.
>Ho (null hypothesis): There is no linear relationship between the dependent variable (MPG) and the independent variables (vehicle length, vehicle weight, spoiler angle, ground clearance, and whether the car is an AWD or not) where slope of the linear model is equal to 0. <p></p>
>Ha (alternative hypothesis): There is a linear relationship between the dependent variable and the independent variables, where slope of the linear model is not equal to 0.

<p align="middle">
    <img src="https://github.com/samanthajpv/MechaCar_Statistical_Analysis/blob/0ea9e29815bae28efc548027d6dcf296b1bf6edc/Images/Linear%20Regression.png" width="600" height="400"/>
    <h5 align="center">Multiple Linear Regression Results</h5>
</p>

- In order to determine the variables that provide a non-random amount of variance to the mpg, the value to be evaluted is the p-value which can be found under ```Pr(>|t|)```. The p-value of vehicle length and ground clearance, including the intercept, significantly influence the variability of the car's mpg. This means that the p-value of all three variables are less than 0.05 and considered significant in providing contribution to the linear model.

- The slope of the linear model is not zero. The p-value of the multiple regression analysis is **5.35e-11**, which is lower than the specified significance level of 0.05. This suggests that the null hypothesis should be rejected since there is a significant linear relationship between the dependent and independent variables.

- The R-squared value of **0.71** represents the closeness of the data fitting the regression line. The computed value is a relatively strong value which makes this linear model predict mpg of MechaCar prototypes effectively. Although, there may be other factors contributing to the mpg that the dataset may not have captured. 

### B. Summary Statistics on Suspension Coils
<p align="middle">
    <img src="https://github.com/samanthajpv/MechaCar_Statistical_Analysis/blob/0ea9e29815bae28efc548027d6dcf296b1bf6edc/Images/Overall%20Statistics.png" width="500" height="75"/>
    <h5 align="center">Overall Lot Statistics</h5>
</p>
In accordance with the Mechacar's design specifications for its suspension coils, the variance must not exceed 100 PSI. Overall, the current manufacturing data is in conformance with the specified requirement, with variance of 62.29. 
<p></p>
<p align="middle">
    <img src="https://github.com/samanthajpv/MechaCar_Statistical_Analysis/blob/0ea9e29815bae28efc548027d6dcf296b1bf6edc/Images/Lot%20Statistics.png" width="500" height="100"/>
    <h5 align="center">Indivudual Lot Statistics</h5>
</p>
Although, when variance was computed for each manufacturing lot, Lot 3 shows that it does not meet the design specifications with a variance of 170.29. It is critical to drill down into the data specially if looking for elements that influence the variability. Lot 3 obviously has a big impact on the overall variance which the manufacturing team might want to further investigate.

### C. T-Tests on Suspension Coils
T-Tests were performed on the suspension coil data to determine if there is a statistical difference across all manufacturing lots and each of the lots from the population mean of 1,500 PSI.
>Ho (null hypothesis): The observed sample mean is equal to the population mean. <p></p>
>Ha (alternative hypothesis): The observed sample mean is not equal to the population mean.

<p align="middle">
    <img src="https://github.com/samanthajpv/MechaCar_Statistical_Analysis/blob/0ea9e29815bae28efc548027d6dcf296b1bf6edc/Images/ttest%20overall.png" width="500" height="250"/>
    <h5 align="center">Overall T-Test Result</h5>
</p>

The overall computed p-value is 0.06 which is above the set significance level. There is no sufficient evidence to reject the null hypothesis that the true mean is equal to 1,500 PSI. 

<p align="middle">
    <img src="https://github.com/samanthajpv/MechaCar_Statistical_Analysis/blob/0ea9e29815bae28efc548027d6dcf296b1bf6edc/Images/ttest%20lot1.png" width="500" height="200"/>
    <h5 align="center">Lot 1 T-Test Result</h5>
</p>

<p align="middle">
    <img src="https://github.com/samanthajpv/MechaCar_Statistical_Analysis/blob/0ea9e29815bae28efc548027d6dcf296b1bf6edc/Images/ttest%20lot2.png" width="500" height="200"/>
    <h5 align="center">Lot 2 T-Test Result</h5>
</p>

<p align="middle">
    <img src="https://github.com/samanthajpv/MechaCar_Statistical_Analysis/blob/0ea9e29815bae28efc548027d6dcf296b1bf6edc/Images/ttest%20lot3.png" width="500" height="200"/>
    <h5 align="center">Lot 3 T-Test Result</h5>
</p>

The same applies to the computed p-values of manufacturing lots 1 & 2. The mean of both lots are statistically similar to the population mean for both p-values are above 0.05. As for Lot 3, the p-value is 0.04, below the set significance level. Therefore, there is sufficient evidence to reject the null hypothesis and state that the mean of Lot 3 and the population mean are statistically different.

### D. Study Design: MechaCar vs Competition

Comparing the MechaCar's performance from vehicles produced by other manufacturers can be done through designing a statistical study using R. 

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:

What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

## Reference
(1) Trilogy Education Services. (2021, September). *Module 15 Challenge*. https://courses.bootcampspot.com/courses/626/assignments/13342?module_item_id=213533
