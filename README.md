# MechaCar-Statistical-Analysis

## Overview

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles, We will use data with different approaches provide insights. 

We will perform linear regression analysis, collect summary statistics from the manufacturing lots, run t-tests, and design a statistical study to compare vehicle performance.

## Linear Regression to Predict MPG

According to our results, vehicle length and ground clearance, as well as intercept are statistically unlikely to provide random amounts of variance to the linear model. They have a significant impact on mpg.

![Screen Shot 2021-11-27 at 6 07 39 PM](https://user-images.githubusercontent.com/88747464/143728719-2ab41845-d86a-469a-ad8b-d11259939a8f.png)

The slope of the linear model should not consider being zero. There are multiple metrics, such as vehicle_length, ground_clearance, and drivetrain (AWD) have a significant impact on mpg.

![Screen Shot 2021-11-27 at 6 25 12 PM](https://user-images.githubusercontent.com/88747464/143728731-e1ec154c-7842-49d6-a3d0-ff2d520edbd8.png)

This linear model predicts the mpg of MechaCar prototypes effectively. There is a significant linear relationship between mpg and vehicle_length, also mpg and ground_clearance. 

![Screen Shot 2021-11-27 at 7 00 16 PM](https://user-images.githubusercontent.com/88747464/143728741-4abfa87a-ca8c-4fdf-830d-8ae4a0e6d9ea.png)

After creating a Correlation matrix for the corresponding correlation coefficient, there’s a weak correlation between mpg and ground_clearance. There’s a moderate correlation between mpg and vehicle_length. 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

The current manufacturing data meet this design specification for all manufacturing lots in total. 

![Screen Shot 2021-11-27 at 7 23 44 PM](https://user-images.githubusercontent.com/88747464/143728772-5db0d11d-3102-4650-a8ee-69f8176537ad.png)

However, for each lot individually, only lot 1 and lot 2 meet the requirements. 

![Screen Shot 2021-11-27 at 7 23 34 PM](https://user-images.githubusercontent.com/88747464/143728777-459accfb-2b2d-4204-a570-8f675a6d615d.png)

## T-Tests on Suspension Coils

The mean of all manufacturing lots is very close to the population mean of 1,500 pounds per square inch.

![Screen Shot 2021-11-27 at 10 19 19 PM](https://user-images.githubusercontent.com/88747464/143728825-31e1d591-4a29-4c3e-b84f-12a63ca1f8ea.png)

Lot1 has the exact mean and Lot2 has nearly the same mean as 1,500.

![Screen Shot 2021-11-27 at 10 18 44 PM](https://user-images.githubusercontent.com/88747464/143728827-e569f20e-affb-4a1f-9bc0-774cfd11cd38.png)

![Screen Shot 2021-11-27 at 10 18 56 PM](https://user-images.githubusercontent.com/88747464/143728828-e6b567bb-6528-4b3f-bc8f-55261921fce0.png)

Lot3 has a statistical difference from the population mean.

![Screen Shot 2021-11-27 at 10 19 08 PM](https://user-images.githubusercontent.com/88747464/143728830-3f135bb7-ee67-4f1c-95b1-51bb963996fc.png)

## Study Design: MechaCar vs Competition

Metrics:
- Maintenance cost and safety rating.

Null hypothesis:
- If safety rating has a significant impact on maintenance cost.

Statistical test:
- To perform a simple linear regression test, since there is only one independent variable and one dependent variable. 

Data:
- To collect data and conduct a dataframe of the maintenance cost and safety rating.
