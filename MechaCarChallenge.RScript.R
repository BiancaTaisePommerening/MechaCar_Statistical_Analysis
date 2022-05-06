# Use the library() function to load the tidyverse package.
library(tidyverse)

# DELIVERABLE 1
# Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg <- read.csv('MechaCar_mpg.csv') #import dataset

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar_mpg)

# plot the linear regression on AWD and mpg
plt <- ggplot(MechaCar_mpg,aes(x=AWD, y=mpg))+geom_point()

# plot the linear regression on vehicle_length and mpg
ggplot(MechaCar_mpg,aes(x=vehicle_length, y=mpg))+geom_point()

# plot the linear regression on spoiler_angle and mpg
ggplot(MechaCar_mpg,aes(x=spoiler_angle, y=mpg))+geom_point()

# plot the linear regression on ground_clearance and mpg
ggplot(MechaCar_mpg,aes(x=ground_clearance, y=mpg))+geom_point()

# plot the linear regression on vehicle_weight and mpg
ggplot(MechaCar_mpg,aes(x=vehicle_weight, y=mpg))+geom_point()

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar_mpg))


# DELIVERABLE 2
# import and read in the Suspension_Coil.csv file as a table.
MechaCar_mpg <- read.csv('MechaCar_mpg.csv') #import dataset
