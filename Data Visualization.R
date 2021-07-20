data <- read.csv("dat137.csv")
tsdata <- ts(data[, 3], frequency = 4, start = c(1950, 1))
plot(tsdata, main = "consumption expenditure(in thousands)", ylab = "Expenditure")
# 
# // Q1 (b)
# 
# 
# ltsdata <- log(tsdata)
# log <- diff(ltsdata)
# logdata <- log*100
# plot(logdata, main = "consumption expenditure(in log)", ylab = "Expenditure")
# 
# 
# // q1 part c
# 
# g <- diff(tsdata)/lag(tsdata, -1)
# agr <- (1+g)^4-1
# perlog <- agr*100
# plot(perlog, main = "consumption expenditure(in log scale)", ylab = "Expenditure")
# 
# 
# ////////////////////////////////////////
# // q2 parta
# 
# t <- time(tsdata, offset=0.5)
# t2 <- t^2
# linear <- lm(tsdata~t)
# a <- coef(linear)
# tr1 <- a[1] + a[2]*t
# tr2 <- a2[1] +a2[2]*t + a2[3]*t2
# quadratic <- lm(tsdata~t+t2)
# // plotting th graph
# plot(tsdata, main = "Lin and Quad trends", ylab = "Expenditure")
# //(a is linear, a2 is quadratic) (coefficients)
# // tr1 and tr2 are linearand quadraic trends
# lines(tr1, col = "green")
# // tr1 trend color = green
# lines(tr2, col = "blue")
# // tr2 trend color = blue
# // making a legend
# legend("bottomright", c("data", "linear trend", "quadratic trend"), col = c(1, "green", "blue"))
# plot(tsdata, main = "Lin and Quad trends", ylab = "Expenditure")
# lines(tr1, col = 3)
# lines(tr2, col = 4)
# legend("bottomright", c("data", "linear trend", "quadratic trend"), col = c(1,3,4), lty = 1)


# # ////////////////////////////////////////
# #   // q2 part B
# 
# ltsdata <- log(tsdata)
# l <- time(ltsdata, offset=0.5)
# l2 <- l^2
# linear <- lm(ltsdata~l)
# quadratic <- lm(ltsdata~l+l2)
# a <- coef(linear)
# a2 <- coef(quadratic)
# lr1 <- a[1] + a[2]*l
# lr2 <- a2[1] +a2[2]*l + a2[3]*l2
# # // plotting th graph
# plot(ltsdata, main = "Lin and Quad trends (log)", ylab = "Expenditure")
# # //(a is linear, a2 is quadratic) (coefficients)
# # // tr1 and tr2 are linearand quadraic trends
# lines(lr1, col = "green")
# # // tr1 trend color = green
# lines(lr2, col = "blue")
# # // tr2 trend color = blue
# # // making a legend
# plot(ltsdata, main = "Lin and Quad trends", ylab = "Expenditure")
# lines(lr1, col = 3)
# lines(lr2, col = 4)
# legend("bottomright", c("data", "linear trend", "quadratic trend"), col = c(1,3,4), lty = 1)
# 
# 
# 
# # ////////////////////////////////////////
# #   // q2 part C
# # Q2 Part c reasoning -
# # We notice very volatile fluctiations when we remove the quadratic trend
# > csi <- ltsdata - lr2
# > plot(ltsdata, main = "Detrended series", ylab = "Expenditure")
# > plot(csi, main = "Detrended series", ylab = "Expenditure")
# 
# 
# 
# # ////////////////////////////////////////
# #   // q2 part D
# > dec <- decompose(csi, filter = rep(1/5, 5))
# > Ct <- dec$trend
# > St <- dec$seasonal
# > plot(ct, main = "Cyclical component")
# 
# 
# # ////////////////////////////////////////
# #   // q2 part E
# > lowFreq <- tr2 + Ct
# > plot(Ct, main = "Low frequency")
# > plot(lowFreq, main = "Low frequency")
# # We notice the graph is almost linear with slight fluctuations
# 
# # ////////////////////////////////////////
# #   // q2 part F
# > sts <- dec$figure
# > barplot(sts, main = "Seasonal component")
# 


# ////////////////////////////////////////
#   // q3 Part A

# data <- read.csv("dat137.csv")
# data1 <- read.csv("dat140.csv")
# tsdata <- ts(data[, 3], frequency = 4, start = c(1950, 1))
# tsdata1 <- ts(data1[, 3], frequency = 4, start = c(1950, 1))
# ltsdata <- log(tsdata)
# ltsdata1 <- log(tsdata1)
# plot(ltsdata, ltsdata1, main = "137, 140 scatter plot", xlab = "137 data", ylab = "140 data", pch = 21)
# 

# ////////////////////////////////////////
#   // q3 Part B
# t <- time(tsdata, offset=0.5)
# f <- time(tsdata1, offset=0.5)
# 
# 
# 
# t2 <- t^2
# f2 <- f^2
# 
# linear <- lm(tsdata~t)
# linear1 <- lm(tsdata~f)
# 
# quadratic <- lm(tsdata~t+t2)
# quadratic1 <- lm(tsdata1~f+f2)
# 
# a <- coef(linear)
# a1 <- coef(linear1)
# 
# q1 <- coef(quadratic)
# q2 <- coef(quadratic1)
# 
# tr1 <- a[1] + a[2]*t
# tr2 <- q1[1] +q1[2]*t + a[3]*t2
# 
# fr1 <- a[1] + a[2]*f
# fr2 <- q2[1] +q2[2]*f + a1[3]*f2

#// plotting th graph
#//plot(tsdata, tsdata1, main = "Lin and Quad trends", ylab = "Expenditure")
# //(a is linear, a2 is quadratic) (coefficients)
# // tr1 and tr2 are linearand quadraic trends
# lines(tr1, col = "green")
# // tr1 trend color = green
# lines(tr2, col = "blue")
# // tr2 trend color = blue
# // making a legend
# legend("bottomright", c("data", "linear trend", "quadratic trend"), col = c(1, "green", "blue"))
# plot(tsdata, main = "Lin and Quad trends", ylab = "Expenditure")
# lines(tr1, col = 3)
# lines(tr2, col = 4)
# legend("bottomright", c("data", "linear trend", "quadratic trend"), col = c(1,3,4), lty = 1)


# # ////////////////////////////////////////
# #   // q2 part B
#
# ltsdata <- log(tsdata)
# ltsdata1 <- log(tsdata1)
# 
# l <- time(ltsdata, offset=0.5)
# lf <- time(ltsdata1, offset=0.5)
# 
# l2 <- l^2
# lf2 <- lf^2
# 
# linear <- lm(ltsdata~l)
# linear1 <- lm(ltsdata1~lf)
# 
# quadratic <- lm(ltsdata~l+l2)
# quadratic1 <- lm(ltsdata~lf+lf2)
# 
# a <- coef(linear)
# af <- coef(linear1)
# 
# a2 <- coef(quadratic)
# af2 <- coef(quadratic1)
# 
# lr1 <- a[1] + a[2]*l
# fr1 <- af[1] + af[2]*lf
# 
# lr2 <- a2[1] +a2[2]*l + a2[3]*l2
# fr2 <- af2[1] +af2[2]*lf + af2[3]*lf2
# 
# # // plotting th graph
# # plot(ltsdata, ltsdata1, main = "Lin and Quad trends (log)", ylab = "Expenditure")
# # //(a is linear, a2 is quadratic) (coefficients)
# # // tr1 and tr2 are linearand quadraic trends
# # lines(lr1, col = "green")
# # # // tr1 trend color = green
# # lines(lr2, col = "blue")
# # # // tr2 trend color = blue
# # # // making a legend
# # plot(ltsdata, main = "Lin and Quad trends", ylab = "Expenditure")
# # lines(lr1, col = 3)
# # lines(lr2, col = 4)
# # legend("bottomright", c("data", "linear trend", "quadratic trend"), col = c(1,3,4), lty = 1)
# #
# #
# # #
# # # # ////////////////////////////////////////
# # # #   // q2 part C
# # # # Q2 Part c reasoning -
# # We notice very volatile fluctiations when we remove the quadratic trend
# csi <- ltsdata - lr2
# csi1 <- ltsdata1 - fr2
# # plot(ltsdata, main = "Detrended series", ylab = "Expenditure")
# # plot(csi, main = "Detrended series", ylab = "Expenditure")
# # #
# # #
# # #
# # # # ////////////////////////////////////////
# # # #   // q2 part D
# dec <- decompose(csi, filter = rep(1/5, 5))
# dec1 <- decompose(csi1, filter = rep(1/5, 5))
# 
# Ct <- dec$trend
# Ct1 <- dec1$trend
# 
# plot(csi, csi1, main = "", ylab = "Expenditure")
# 
# 
# 
# 