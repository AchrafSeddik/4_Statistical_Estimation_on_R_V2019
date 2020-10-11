#######################################
#        Statistics lesson 3          #
#        Confidence intervals         #
#######################################


#Quantile function exploration
qnorm(0.975, 0,1)
qnorm(0.95, 0,1)


#Dummy data creation : 
mu <- 5
sigma <- 1
N <- 100
n=3
X1 = rnorm(N, mu, sigma)
X2 = rnorm(N, mu, sigma)
X3 = rnorm(N, mu, sigma)
data = as.data.frame(cbind(X1,X2,X3))

#data vizualization
hist(data$X1)
hist(data$X2)
hist(data$X3)

## Case1 : Assume the mean of the data set is not knwon (i.e. population mean not knwon we will compute it from sample) : 

#Confidance interval parameters
Clevel <- 0.95      # risk level = 5%
Xbar <- colMeans(data)  # mean i mean over all columns  
p <- (1+ Clevel)/2  # two sided confidence interval 
quant <- qnorm(p)   #quantile

#determination
CIside <- quant * sigma/sqrt(n) #-> We use the sigma we set in the beginning
CIleft <- Xbar - CIside
CIright <- Xbar + CIside

#Display result
rbind(CIleft, Xbar, CIright)

## Case 2 : Assume the mean and the variance of the population are not knwon (i.e. we compute both from data sample): 
install.packages("matrixStats")
library(matrixStats)

S <- apply(data, 2, sd) #we compute sample standard deviation
colSds(as.matrix(data))

quant <- qt(p,n-1)
S_CIside <- quant * S / sqrt(n)
S_CIleft <- Xbar - CIside
S_CIright <- Xbar + CIside

#Display result
rbind(S_CIleft, Xbar, S_CIright)


