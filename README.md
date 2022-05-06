# MechaCar_Statistical_Analysis
Statistics and R

## Linear Regression to Predict MPG


### Multiple Linear Regression Model

- The multiple linear regression model below takes in 5 different variables against the mpg, in order to identify which variables can be used for prediction and which ones cannot.

![linear_regression_model](./Images/linear_regression_model.png)
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    - Based on the results, the variables vehicle_length and ground_clearance are the ones we could use to predict since they presented a non-random amount of variance to the mpg values, since they are above zero, while all the other ones are all 0 which means they are too random to use for prediction.


### Multiple Linear Regression Model Summary 

- In order to identify if the slope of the linear model can be considered zero, the following multiple linear regression summary was generated:

![summary_lm](./Images/summary_lm.png)

- Is the slope of the linear model considered to be zero? Why or why not?
    - It cannot be considered zero, because we have some that are not zero. Which are the vehicle length and the ground clearance because the p-value showed that they are smaller than 0.5.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    - It depends on which value is been considered enough to be used for predictability. For this case the Adjusted R-squared is 0.6825, which means that 68% of the variance of the mpg comes form the 5 variables that we tested and 32% is caused by unkown factors. 
    So, if a good model is considered to be 0.7 or 0.8 then the model we have does not predict the mpg of MechaCar prototypes effectively. On the other hand, if we say that the results are close enough and we accept that 33% is from unkown factors then the results of our testes could be used.








