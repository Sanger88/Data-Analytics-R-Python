# LAB Code: CA Regression
#
setwd("C:/WAREHOUSE - dio/Dublin Business School/2. Statistics for Data Analytics/Assigment") 

# library(MASS)
# library(ISLR)

# Loading Boston Data from CSV
Boston=read.csv("boston.csv",header=T,na.strings="?")
fix(Boston)     # print dataframe
names(Boston)    # list attributes
attach(Boston)

#
##
###
#### Part a) Descriptive Statistics - Quantitative 
###
##
#

  ## 1. CRIM
  #values executed in excel
    hist(CRIM,col=2,breaks=15)
    boxplot(CRIM)
  
  ## 2. ZN 
  #values executed in excel
    hist(ZN,col=2,breaks=15)
    boxplot(ZN)
  
  ## 3. INDUS 
  #values executed in excel
  hist(INDUS,col=2,breaks=15)
  boxplot(INDUS)
  
  ## 4. CHAS 
  #values executed in excel
    hist(CHAS,col=2,breaks=15)
    boxplot(CHAS)
  
  ## 5. NOX 
  #values executed in excel
    hist(NOX,col=2,breaks=15)
    boxplot(NOX)
  
  ## 7. RM
  #values executed in excel
    hist(RM,col=2,breaks=15)
    boxplot(RM)
  
  ## 8. AGE
  #values executed in excel
    hist(AGE,col=2,breaks=15)
    boxplot(AGE)
  
  ## 9. DIS
  #values executed in excel
    hist(DIS,col=2,breaks=15)
    boxplot(DIS)
  
  ## 10. RAD
  #values executed in excel
    hist(RAD,col=2,breaks=15)
    boxplot(RAD)
  
  ## 10. TAX
  #values executed in excel
    hist(TAX,col=2,breaks=15)
    boxplot(TAX)
  
  ## 11. PT
  #values executed in excel
    hist(PT,col=2,breaks=15)
    boxplot(PT)
  
  ## 12. B
  #values executed in excel
  hist(B,col=2,breaks=15)
  boxplot(B)
  
  ## 13. LSTAT
  #values executed in excel
    hist(LSTAT,col=2,breaks=15)
    boxplot(LSTAT)
  
  ## 14. MV
  #values executed in excel
    hist(MV,col=2,breaks=15)
    boxplot(MV)


#
##
###
#### Part b) Simple regression model for each predictor - Fit linearlm.fit=lm(crim ) 
###
##
#


  ## 1. ZN 
  
    lm.fit=lm(Boston$CRIM~Boston$ZN)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$ZN, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
    
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~ZN)
    plot(ZN, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
  
    
  ## 2. INDUS
  
    lm.fit=lm(Boston$CRIM~Boston$INDUS)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$INDUS, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
    
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~INDUS)
    plot(INDUS, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
  
 
  ## 3.CHAS  
  
    lm.fit=lm(Boston$CRIM~Boston$CHAS)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$CHAS, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
  
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~CHAS)
    plot(CHAS, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
  
    
  ## 4.NOX  
  
    lm.fit=lm(Boston$CRIM~Boston$NOX)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$NOX, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
  
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~NOX)
    plot(NOX, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
  
    
  ## 5.RM  
  
    lm.fit=lm(Boston$CRIM~Boston$RM)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$RM, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
  
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~RM)
    plot(RM, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
  
    
  ## 6.AGE  
  
    lm.fit=lm(Boston$CRIM~Boston$AGE)
    summary (lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$AGE, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
  
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~AGE)
    plot(AGE, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
  
    
  ## 7.DIS  
  
    lm.fit=lm(Boston$CRIM~Boston$DIS)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$DIS, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
  
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~DIS)
    plot(DIS, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
  
    
  ## 8.RAD  
  
    lm.fit=lm(Boston$CRIM~Boston$RAD)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$RAD, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
  
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~RAD)
    plot(RAD, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
  
    
  ## 9.TAX  
    
    lm.fit=lm(Boston$CRIM~Boston$TAX)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$TAX, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
  
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~TAX)
    plot(TAX, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
  
    
  ## 10.PT  
  
    lm.fit=lm(Boston$CRIM~Boston$PT)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$PT, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
  
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~PT)
    plot(PT, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
  
    
  ## 11.B  
    
    lm.fit=lm(Boston$CRIM~Boston$B)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$B, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
  
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~B)
    plot(B, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)

  
  ## 12.LSTAT 
  
    lm.fit=lm(Boston$CRIM~Boston$LSTAT)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$LSTAT, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
    
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~LSTAT)
    plot(LSTAT, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
  
    
  ## 13.MV  
  
    lm.fit=lm(Boston$CRIM~Boston$MV)
    summary(lm.fit)
    
    coef(lm.fit)     # coefficients (slope and intercept)   
    confint(lm.fit)  # confidence interval
    
    plot(Boston$MV, Boston$CRIM)
    abline(lm.fit, lwd=3, col="red")
    
    RESIDUALS<-residuals(lm.fit)
    lm.fitr<-lm(RESIDUALS~MV)
    plot(MV, RESIDUALS)
    abline(lm.fitr)
    qqnorm(RESIDUALS)
    qqline(RESIDUALS)
 

#
##
###
#### Part c) Multiple linear regression with all predictors 
###
##
#    
      lm.fit=lm(CRIM~ZN+INDUS+CHAS+NOX+RM+AGE+DIS+RAD+TAX+PT+B+LSTAT+MV,data=Boston)
      summary(lm.fit)
  
      
#
##
###
#### Part d) Comparison of simple linear regression and multiple linear regression variables.
###
##
# 
      # Loading PartE) Data from CSV
      PartE =read.csv("PartE.csv",header=T,na.strings="?")
      fix(PartE)     # print dataframe
      names(PartE)    # list attributes
      attach(PartE)
      plot(Bivariate..β1.Multiple.Linear.Regression~Univariate..β1.Simple.Linear.Regression)
#
##
###
#### Part e) Non-linear association
###
##
#  
      # 1. ZN
      lm.fit3=lm(CRIM~poly(ZN,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(ZN,3),data=Boston)
      summary(lm.fit3)
      
      
      # 2. INDUS
      lm.fit3=lm(CRIM~poly(INDUS,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(INDUS,3),data=Boston)
      summary(lm.fit3)
      
      
      # 3. CHAS
      lm.fit3=lm(CRIM~poly(CHAS,1),data=Boston)
      summary(lm.fit3)
      
      
      # 4. NOX
      lm.fit3=lm(CRIM~poly(NOX,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(NOX,3),data=Boston)
      summary(lm.fit3)
      
      
      # 5. RM
      lm.fit3=lm(CRIM~poly(RM,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(RM,3),data=Boston)
      summary(lm.fit3)
      
      
      # 6. AGE
      lm.fit3=lm(CRIM~poly(AGE,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(AGE,3),data=Boston)
      summary(lm.fit3)
      
      
      # 7. DIS
      lm.fit3=lm(CRIM~poly(DIS,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(DIS,3),data=Boston)
      summary(lm.fit3)
      
      
      # 8. RAD
      lm.fit3=lm(CRIM~poly(RAD,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(RAD,3),data=Boston)
      summary(lm.fit3)
      
      
      # 9. TAX
      lm.fit3=lm(CRIM~poly(TAX,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(TAX,3),data=Boston)
      summary(lm.fit3)
      
      
      # 10. PT
      lm.fit3=lm(CRIM~poly(PT,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(PT,3),data=Boston)
      summary(lm.fit3)
      
      
      # 11. B
      lm.fit3=lm(CRIM~poly(B,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(B,3),data=Boston)
      summary(lm.fit3)
      
      
      # 12. LSTAT
      lm.fit3=lm(CRIM~poly(LSTAT,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(LSTAT,3),data=Boston)
      summary(lm.fit3)
      
      
      # 13. MV
      lm.fit3=lm(CRIM~poly(MV,5),data=Boston)
      summary(lm.fit3)
      
      lm.fit3=lm(CRIM~poly(MV,3),data=Boston)
      summary(lm.fit3)
      
      
      
      
      
      
      
      
      
      
      