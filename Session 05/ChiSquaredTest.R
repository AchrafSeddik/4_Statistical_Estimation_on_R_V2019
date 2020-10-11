
#########

EmpData = matrix(c(501,539,428,552), nrow = 2, ncol = 2, byrow = T)
colnames(EmpData) <- c("<1year", ">1year") 
rownames(EmpData) <- c("men", "women")

chisq.test(EmpData)


qchisq(0.95, df=1)


#######
library(MASS) # charge le package MASS
tbl = table(survey$Smoke, survey$Exer)
tbl # table de contingence

chisq.test(tbl)

ctbl = cbind(tbl[,"Freq"], tbl[,"None"] + tbl[,"Some"])
ctbl

chisq.test(ctbl)

data(package="MASS") # pour connaître les jeux de données