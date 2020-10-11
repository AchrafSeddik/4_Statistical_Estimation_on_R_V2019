#######################################
#         Statistics lesson 5         #
#              Regression             #
#######################################

######### Simple regression ###########

#descriptive statistics
str(data_CW)
summary(data_CW)
plot(data_CW$W ~ data_CW$C, main = "Relation between wage and consumption", 
     xlab = "wage", 
     ylab = "consumption")

#covariance 
cov(data_CW$W, data_CW$C)
#Correlation
cor(data_CW$W, data_CW$C)

#simple linear regression
Simple_model = summary(lm(data_CW$C ~ data_CW$W))

#get model analytics
R_2 = Simple_model$r.squared
coefficents = Simple_model$coefficients
residuals = Simple_model$residuals


######### Multiple regression ###########

#consider the data set "mtcars"
data("mtcars")

#Selected regression model
summary(lm(mtcars$mpg ~ mtcars$cyl + mtcars$disp))
final_model = summary(lm(mtcars$mpg ~ mtcars$cyl + mtcars$wt ))

#to obtain Y_hat (fitted values) 
predict(lm(mtcars$mpg ~ mtcars$cyl + mtcars$wt ))

#to obtain prediction based for a new car for which we have information about wt and cyl :
new.car <- data.frame(wt=1.7, cyl=5) 
predict.lm(lm(mtcars$mpg ~ cyl + wt, data = mtcars), newdata = new.car) #we get prediction of Y based on the observed values for Xi

