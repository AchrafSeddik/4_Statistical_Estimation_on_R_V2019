############################################
#      1 - Descriptive Statistics          #
#             Achraf SEDDIK                #    
############################################

### Exercice 01 - measures of central tendency ###

#mean
  mean(Students_data$`Books Read`)

#quantiles
  median(Students_data$`Books Read`)
  quantile(Students_data$`Books Read`, 0.25)
  quantile(Students_data$`Books Read`, 0.5)
  quantile(Students_data$`Books Read`, 0.75)
  #Centiles
  quantile(Students_data$`Books Read`, 0.9)

#mode
  library(pracma)
  Mode(Students_data$`Books Read`)

### Exercice 02 - measures of Dispersion ###

#range
  Rg = range(Students_data$`Books Read`)
  
#interquartile range
  IQR(Students_data$`Books Read`, na.rm = FALSE, type = 7)
  #quantile(Students_data$`Books Read`, 0.75) - quantile(Students_data$`Books Read`, 0.24)

#interdecile range 
  quantile(Students_data$`Books Read`, 0.9) - quantile(Students_data$`Books Read`, 0.1)
  
#intercentile range 
  quantile(Students_data$`Books Read`, 0.99) - quantile(Students_data$`Books Read`, 0.01)

#Mean Absolute deviation 
  library(DescTools)
  MeanAD(Students_data$`Books Read`, FUN = mean)

# Variance   
  var(Students_data$`Books Read`)
  
# standard deviation :
  sd(Students_data$`Books Read`)
  sqrt(var(Students_data$`Books Read`))
  
#descriptive statistics
  summary(Students_data)
    
### Exercice 03 - Data viz ###
  
#Pie chart
  pie(table(Students_data_2$Gender) )
  pie(table(Students_data_2$Gender), main="Pie Chart of Students Gender", labels = c('Female', 'Male', 'Unknown'), col = c('red','blue', 'green'), cex.main=0.8, cex = 0.8 )

#barplot for qualitative variable
  barplot(table(Students_data_2$Gender), main="Barplot of Students Gender", col = c('red','blue', 'green'), cex.main = 0.9)

#mosaic plot  
  mosaicplot(table(Students_data_2$Gender), main="mosaicplot of Students Gender", col = c('red','blue', 'green'), cex.main = 0.9)  
  
#barplot for a discrete quantitative variable
  barplot(Students_data_2$`Books Read`, main="Barplot of Students Ages", col = 'blue')
  barplot(Students_data_2$`Books Read`[1:5], main="Barplot of Students Ages", col = 'blue', names.arg = Students_data_2$Student[1:5], cex.names = 0.5,cex.main = 0.9)
  
#Histogram for a continous quantitative variable
  hist(Students_data_2$Age, main="Histogram of Students ages", col = 'blue', nclass = 6 , xlab = "Students Ages", cex.main = 0.9)
  
#boxplot : 
  boxplot(Students_data_2$Age ~ Students_data_2$Gender, main="Boxplot of Students ages by gender",cex.main = 0.9)
  boxplot(Students_data_2$`Books Read` ~ Students_data_2$Gender, main="Books read by gender",cex.main = 0.9)
  

  
