#######################################
#     Statistics lesson 2 part 2      #
#     Fitting liklihood estimator     #
#######################################


### we simulate data sets for which we know the mean

#simulate Bernouilli sample : 200 points of proba 0.2, with n =1
X.bern = rbinom(200, 1, 0.2)
hist(X.bern)

mean(X.bern)

#simulate Binomial sample : 200 points of proba 0.5, with n =5 -> over 5 trials at each of the 200, count the number of 1
X.binom = rbinom(200, 5, 0.5) #if p decrease, the proba to have 5 realisation becomes small
hist(X.binom)

mean(X.binom)/5 #since E=Np -> p=E/n ; n is the number of trials

#simulate geometric sample : 
X.geom = rgeom(200, 0.7)
hist(X.geom, main="Poisson distribution")

1/mean(X.geom)

#simulate Poisson sample
x.pois <- rpois(n=200,lambda=4)
hist(x.poi,main="Poisson distribution")

mean(x.pois) 

#simulate exponential sample 
x.exp = rexp(200, 0.7)
hist(x.exp,main="Poisson distribution")

1/mean(x.exp)

#simulate Normal sample
  #data
  x.norm<-rnorm(n=200, m=10,sd=2)
  #hist
  hist(x.norm,main="Histogram of observed data")
  #density
  plot(density(x.norm),main="Density estimate of data")
  #CDF
  plot(ecdf(x.norm), main="Empirical cumulative distribution function")
  
  #parameters estimates
  mean.hat<-mean(x.norm); mean.hat
  std.hat = sqrt(var(x.norm)); std.hat
  
### Now we estimate maximum liklihood estimators of the mean for the data we simulated
  # we verify that the estimator gives good results for the mean that we know 
  
#  In R environment we can get MLE (Max Liklihood Estimator) by two statements:
#    1) mle() included in package stats4
#    2) fitdistr()included in package MASS
    
x = x.norm

###using stats4
library(stats4)

#note : initial value is very important (must be close to the real one)
summary(mle(LL, start = list(mu = 9, sigma=1)))

###using mass
library(MASS)

MASS::fitdistr(x.norm,"normal")
MASS::fitdistr(x.pois,"Poisson")
MASS::fitdistr(X.geom,"geometric")
MASS::fitdistr(x.exp,"exponential")


Data = as.data.frame(cbind(X.bern, X.binom, X.geom, x.pois, x.exp, x.norm))
names(Data) <- c("X1","X2","X3","X4","X5","X6")

write.csv(Data, file = "data.csv",row.names=FALSE)


##### appendix : 

#likelihood, not used since mle take -log liklihood    
L <- function(mu, sigma) {
  return( prod(dnorm(x, mu, sigma)) )
}

#Function to calculate negative log-likelihood.
LL <- function(mu, sigma) {
  R = dnorm(x, mu, sigma)
  -sum(log(R))
}


