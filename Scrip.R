Cred_ts <- stat::ts(data = dCredito, frequency = 12, start = c(2015,1))

IBOV_ts <- ts(data = dIBOV, frequency = 12, start = c(2015,1))

IPCA_ts <- ts(data = dIPCA, frequency = 12, start = c(2015,1))

Ativ_ts <- ts(data = dAAPL, frequency = 12, start = c(2015,1))

install.packages("tidyverse");library(forecats);library(ggplot2)
library(lmtest)
par(mfrow = c(1,1))


plot(Cred.ts)
acf(Cred.ts)
pacf(Cred.ts)

?ggtsdisplay

plot(IBOV.ts)

plot(IPCA.ts)

plot(Ativ.ts)
