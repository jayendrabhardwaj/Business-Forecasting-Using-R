
# Q1) Plot the datasets to see how it looks. What can we tell from these?

data("austres")
class(austres)
data.ts <- austres
summary(data.ts)
head(data.ts)

#Dataset (austres) is about the numbers of Australian residents distrubuted across the spectrum.

frequency(data.ts)
start(data.ts)
end(data.ts)
plot(data.ts)

# Observation:-
#The start year is 1971
#End year is 1993.
#Frequency is 4
## The data is about numbers of Australian residents measured quarterly.


#Q2 Check if there exists a seasonality or trend using plot and state your results with valid reasons.

plot(data.ts, main = "data.ts", xlab = "TIME",
     ylab = "data.ts")
abline(reg=lm(data.ts~time(data.ts)))
cycle(data.ts)

#This will depict the cycle across the years.
aggregate(data.ts)
plot(aggregate(data.ts, FUN= mean))
# The aggregate function will depict the trend associated with the dataset.

decomponent<- decompose(data.ts, type= "multiplicative")
plot(decomponent)
plot(diff(log(data.ts)))

#OBSERVATION:-
#By the taking difference log of the time series, we can make it stationary so that mean and variance should be the same as the same given time.
#From the decompose function we can verify that there is a seasonality in the dataset as we can see that first two quarter is increasing and other two quarter is decreasing.
# Similarly we can see the trend from the graph as it increasing with respect to the time.

#Q3) Plot Autocorrelation graph and see if there exists seasonality or trend and explain the results.
acf(data.ts, lag= 48)

#From the above plot, we can verify that the graph is decreasing linearly so there is no seasonality but its showing the trend.