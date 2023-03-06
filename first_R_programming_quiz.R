week1 <- read.csv('hw1_data.csv')
#Extract the first 2 rows of the data frame and print them to the console. What does the output look like?

week1[1:2,]
#How many observations (i.e. rows) are in this data frame?

all <- nrow(week1)

#Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
week1[151:153,]

#What is the value of Ozone in the 47th row?
week1[47,]

#How many missing values are in the Ozone column of this data frame?
all_values <- complete.cases(airquality[,1])
all_values
with_value <- airquality[all_values,][,]
rows_value <- nrow(airquality[all_values,])
rows_missing <- all - rows_value
rows_missing

#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
mean(with_value[,1])

#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
condition1 <-with_value[,1] >31 & with_value[,4] >90
condition1_value <- with_value[condition1,]
mean(condition1_value[,2])

#What is the mean of "Temp" when "Month" is equal to 6? 
condition2 <-with_value[,5] ==6
condition2_value <- with_value[condition2,]
mean(condition2_value[,4])



#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
condition3 <-with_value[,5] ==5
condition3_value <-with_value[condition3,]
max(condition3_value[,1])
