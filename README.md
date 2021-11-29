# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
In assessing whether miles per gallon (MPG) has a statistically significant relationship with the five  predictors in the MechaCar dataset, I found that two variables - vehicle length and ground clearance - were significantly correlated. The slope of the linear model is consequently not considered to be zero. When increased or decreased, each of the two predictors with significant correlation coefficients are predicted to correlate with a change in MPG. This would be reflected, when plotted, via a positive or negative slope to the line of best fit. 

This model seems to account for much of the variability in data predicting MPG outputs (R-squared = ~.7). However, the intercept is not a substantive figure (~ -104; it is not possible to have negative MPG). Therefore, there may be additional variables that are not included in the data set that explain MPG results.

![]()

## Summary Statistics on Suspension Coils
The current design specifications for the MechCar suspension coils require that the variance of the suspension coils not exceed 100 PSI. Lots 1 (PSI=0.98) and 2 (PSI=7.5) meet this qualification, but Lot 3 (PSI=170.29) does not. It is not completely clear why this is the case, but the other summary statistics may lend some insight into this. The mean and median PSI values for all 3 lots are within just 2 increments of one another, which aligns with expectations. Lot 3's standard deviation  (~13 PSI) greatly surpasses the other 2, however. This may mean, then, that Lot 3 has a significant number of coils roughly 13 PSI above or below the baseline of 1500. 

## T-tests on Suspension Coils
* For the t-test comparing all manufacturing lots to the mean of the population, we fail to reject the null hypothesis (p > .05). 
* For the t-test comparing Lot 1 to the mean of the population, we reject the null hypothesis (p < .05).  The two means are statistically dissimilar.
* For the t-test comparing Lot 2 to the mean of the population, we reject the null hypothesis (p < .05). The two means are statistically dissimilar.
* For the t-test comparing Lot 3o the mean of the population, we fail to reject the null hypothesis (p > .05).

## Study Design: MechaCar vs. Competition
Comparing MechaCar's key indicators to those of competitors may help company strategists determine what consumer segment(s) to target for marketing. I propose that we use JD Power ratings as our key indicator (or outcome variable) for this study, as JD Power produces some of the most widely-trusted consumer reports in the automobile industry. JD Power's "overall rating" for new cars is a composite that consumers consider to be an indicator of each car's performance.

Because MechaCar is a new model and therefore doesn't yet have consumer ratings, we can select a model of car (either from our fleet or that of a competitor) whose performance metrics (i.e. MPG, HP), price indicators (i.e. MSRP, average sale price), and body style is most similar to MechaCar. Then, we can select the 10 competitor models who we perceive to be our stiffest competition. These 11 models will serve as our polychotomy of dichotomous variables.

Gathering JD Power scores for 11 models in a single year will yield statistically under-powered results. Therefore, I propose that we scrape ratings for the past 5 years for the car models to be included in our study. This will produce 50 observations, from which we should be able to find statistically significant correlations if they exist between overall JD Power rating and each model of car.

With that context in mind, our study would consist of the following steps.

1. Research question: What is the relationship between JD Power score and each car model in the polychotomy, holding constant key indicators that were not included in JD Power's ratings (city MPG, hwy MPG, and horsepower)?
2. Hypothesis: The null hypothesis posits that the JD Power scores are not statistically different from one another when holding constant the control variables (see below).
3. Methodology: To conduct this study, I would fit a multiple regression model and search for statistical significance for each of the models, considering their coefficients in comparison to the referent (MechaCar's proxy).
4. Data types: The data needed to complete this study includes -
* JD Power overall ratings for the 10 comparison models and the MechaCar proxy for the past 5 years
* Data for each model's city and hwy MPG, as well as horsepower (which are factors commonly weighed by consumers). Notably, these metrics were not included in JD Power's overall rating, enabling us to avoid endogeneity.



















