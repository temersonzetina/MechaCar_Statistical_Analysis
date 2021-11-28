# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
In assessing whether miles per gallon (MPG) has a statistically significant relationship with the five  predictors in the MechaCar dataset, I found that two variables - vehicle length and ground clearance - were correlated. The slope of the linear model is consequently not considered to be zero. When increased or decreased, each of the two predictors with significant correlation coefficients are predicted to correlate with a change in MPG. This would be reflected, when plotted, via a positive or negative slope to the line of best fit. 

This model seems to account for much of the variability in data predicting MPG outputs (R-squared = ~.7). However, the intercept is not a substantive figure (~ -104; it is not possible to have negative MPG). Therefore, there may be additional variables that are not included in the data set that explain MPG results.

## Summary Statistics on Suspension Coils
The current design specifications for the MechCar suspension coils require that the variance of the suspension coils not exceed 100 PSI. Lots 1 (PSI=0.98) and 2 (PSI=7.5) meet this qualification, but Lot 3 (PSI=170.29) does not. It is not completely clear why this is the case, but the other summary statistics may lend some insight into this. The mean and median PSI values for all 3 lots are within just 2 increments of one another, which aligns with expectations. Lot 3's standard deviation  (~13 PSI) greatly surpasses the other 2, however. This may mean, then, that Lot 3 has a significant number of coils roughly 13 PSI above or below the baseline of 1500. 

## T-tests on Suspension Coils
* For the t-test comparing all manufacturing lots to the mean of the population, we fail to reject the null hypothesis (p > .05). 
* For the t-test comparing Lot 1 to the mean of the population, we reject the null hypothesis (p < .05).  The two means are statistically dissimilar.
* For the t-test comparing Lot 2 to the mean of the population, we reject the null hypothesis (p < .05). The two means are statistically dissimilar.
* For the t-test comparing Lot 3o the mean of the population, we fail to reject the null hypothesis (p > .05).



