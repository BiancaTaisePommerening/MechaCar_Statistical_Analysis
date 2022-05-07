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
Suspension_Coil <- read.csv('Suspension_Coil.csv') #import dataset
head(Suspension_Coil)
# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- Suspension_Coil%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Variation=sd(PSI), .groups = 'keep')


# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Variation=sd(PSI), .groups = 'keep')



# DELIVERABLE 3

?t.test()


# write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
sample_table <- Suspension_Coil%>% sample_n(50) #randomly sample 50 data points
plt <- ggplot(sample_table,aes(x=PSI)) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot

t.test(sample_table$PSI,mu=mean(Suspension_Coil$PSI)) #compare sample vs

# Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

#lot 1
lot1_table <- Suspension_Coil%>%filter(Manufacturing_Lot=='Lot1')

sample_lot1_table <- lot1_table%>% sample_n(25) #randomly sample 18 data points
plt1 <- ggplot(sample_lot1_table,aes(x=PSI)) #import dataset into ggplot2
plt1 + geom_density() #visualize distribution using density plot


t.test(sample_lot1_table$PSI,mu=mean(lot1_table$PSI)) #compare sample vs population


# lot 2
lot2_table <- Suspension_Coil%>%filter(Manufacturing_Lot=='Lot2')

sample_lot2_table <- lot2_table%>% sample_n(25) #randomly sample 25 data points
plt2 <- ggplot(sample_lot2_table,aes(x=PSI)) #import dataset into ggplot2
plt2 + geom_density() #visualize distribution using density plot


t.test(sample_lot2_table$PSI,mu=mean(lot2_table$PSI)) #compare sample vs population


#lot 3
lot3_table <- Suspension_Coil%>%filter(Manufacturing_Lot=='Lot3')

sample_lot3_table <- lot3_table%>% sample_n(25) #randomly sample 18 data points
plt3 <- ggplot(sample_lot3_table,aes(x=PSI)) #import dataset into ggplot2
plt3 + geom_density() #visualize distribution using density plot


t.test(sample_lot3_table$PSI,mu=mean(lot3_table$PSI)) #compare sample vs population 




