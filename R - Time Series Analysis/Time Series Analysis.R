
####### Time Series Analaysis of Car Sales in Qubec from 1960- 1968.

library(forecast)

data<-read.csv(file.choose(),header=TRUE) 
    
rYear =  data$Year
rCarSales =  data$CarSales 



tsCarSales <- ts( rCarSales , start=c(1960, 01), end=c(1968, 12), frequency=12) 
View(tsCarSales)
class(tsCarSales)
plot(rCarSales~rYear, type="l")  
plot(tsCarSales)  # 1. We read out general trend from plot here. 
abline(reg=lm(tsCarSales~time(tsCarSales)), col="blue")

# Check stationarity

adf.test(tsCarSales, alternative="stationary")  #Dickey-Fuller Test #RESULT Dickey-Fuller = -4.3241, Lag order = 4, p-value = 0.01
acf( tsCarSales , lag.max=20)  
pacf( tsCarSales , lag.max=20) 

auto.fit<-auto.arima(tsCarSales, seasonal=T) # 2.Automatic way to find the optimized model.
tsdisplay(residuals(auto.fit), lag.max=20)
summary( auto.fit)

# Predict 10 step ahead future data
auto.fcast <- forecast(auto.fit, h=10)
plot(auto.fcast)     

