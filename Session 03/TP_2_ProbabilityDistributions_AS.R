
############################################
#           TP2 - Estimation               #
#             Achraf SEDDIK                #    
############################################

##### Discrete probability distributions #####

x = seq(0,30, 1) #we take coordinates over the ensemble N 

#0. Bernouilli Distribution (parameter p) : 
  # particular case of binomial distribution with n = 1 

#1. Geometric distribution (parameter p)
  #mass function
   plot( dgeom(x, p = 0.25), col = 'red', ylab = '', main = "Density function")
   lines( dgeom(x, p = 0.5), col = 'black', ylab = '', type = 'p')
   lines( dgeom(x, p = 0.75), col = 'blue', ylab = '', type = 'p')

  #cumulative distribution function
   plot( pgeom(x, p=0.25), ylab = '', main = "CDF")
   lines( pgeom(x, p=0.5), col = 'red' , ylab = '',type = 'p')    
   lines( pgeom(x ,p=0.75), col = 'blue' , ylab = '',type = 'p')    
   
#2. binomial distribution (parameters p and n)
  n = 30         #for n = 1
  #mass function
    plot( dbinom(x, n, p =  0.25), col = 'red', ylab = '', main = "Density function")
    lines( dbinom(x, n, p = 0.5), col = 'black', ylab = '',type = 'p')
    lines( dbinom(x, n, p = 0.75), col = 'blue', ylab = '',type = 'p')
    
  #cumulative distribution function
    plot( pbinom(x, n, p=0.25), ylab = '', main = "CDF")
    lines( pbinom(x, n, p=0.5), col = 'red' , ylab = '',type = 'p')    
    lines( pbinom(x, n, p=0.75), col = 'blue' , ylab = '',type = 'p')   
    
#3. Poisson distribution (parameter lambda)
  #mass function
    plot( dpois(x, lambda = 0.25), col = 'red', ylab = '', main = "Density function")
    lines( dpois(x, lambda = 0.5), col = 'black', ylab = '',type = 'p')
    lines( dpois(x, lambda = 0.75), col = 'blue', ylab = '',type = 'p')
    
  #cumulative distribution function
    plot( ppois(x, lambda=0.25), ylab = '', main = "CDF")
    lines( ppois(x, lambda=0.5), col = 'red' , ylab = '',type = 'p')    
    lines( ppois(x, lambda=0.75), col = 'blue' , ylab = '',type = 'p')   
    
##### Continuous probability distributions #####

#4. Gaussian (Normal) distribution (parameters mu and sigma)
  x = seq(-10,10, 0.25) #we take x coordinates over the ensemble R
  #density function
    plot(x, dnorm(x, mean = 0, sd = 1), col = 'red', ylab = '', type = 'l', main = "Density function")
    lines(x, dnorm(x, mean = 0, sd = 2), col = 'black', ylab = '',type = 'l')
    lines(x, dnorm(x, mean = 0, sd = 3), col = 'blue', ylab = '',type = 'l')
    lines(x, dnorm(x, mean = 1, sd = 1), col = 'green', ylab = '',type = 'l')
    lines(x, dnorm(x, mean = 2, sd = 1), col = 'yellow', ylab = '',type = 'l')

  #cumulative distribution function
    plot(x, pnorm(x, mean = 0, sd = 1), col = 'red', ylab = '', type = 'l', main = "CDF")
    lines(x, pnorm(x, mean = 0, sd = 2), col = 'black', ylab = '',type = 'l')
    lines(x, pnorm(x, mean = 0, sd = 3), col = 'blue', ylab = '',type = 'l')
    lines(x, pnorm(x, mean = 1, sd = 1), col = 'green', ylab = '',type = 'l')
    lines(x, pnorm(x, mean = 2, sd = 1), col = 'yellow', ylab = '',type = 'l') 
    
#4. exponential distribution (parameters mu and sigma)
    x = seq(0, 10, 0.25) #we take x coordinates over the ensemble R+
  #density function
    plot(x, dexp(x, rate = 1), col = 'red', ylab = '', type = 'l', main = "Density function")
    lines(x, dexp(x, rate = 2), col = 'black', ylab = '',type = 'l')
    lines(x, dexp(x, rate = 3), col = 'blue', ylab = '',type = 'l')

  #cumulative distribution function
    plot( pexp(x, rate = 1), col = 'red', ylab = '', type = 'l', main = "CDF")
    lines( pexp(x, rate = 2), col = 'black', ylab = '',type = 'l')
    lines( pexp(x, rate = 3), col = 'blue', ylab = '',type = 'l')

    
    