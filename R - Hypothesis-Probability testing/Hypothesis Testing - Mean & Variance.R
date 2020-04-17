                             
                               #Hypothesis testing of mean and variance

#PART 1- Hypothesis testing of mean of variable "Reading".
   # Ho:ur = 80,                              
   # Ha:ur =/80 - at the level of alpha = 0.05.
   #(ur denotes the mean of population for reading variable in dataset)

data<-read.csv(file.choose(),header=TRUE)
y=data$Reading 
t.test(y,mu=80, alternative="two.sided")
#___________________________________________________________________________________________
                              #####TEST RESULTS#####
                               #One Sample t-test

                                  #data:  y
                      #t = 5.5719, df = 424, p-value = 4.486e-08
                      #alternative hypothesis: true mean is not equal to 80
                      #95 percent confidence interval:
                      #  81.34029 82.80131
                      #sample estimates:
                      #  mean of x 
                      #82.0708 
#____________________________________________________________________________________________

                            #Explanation for decision making#

#result 95 percent confidence interval is between: 81.34029 and 82.80131
# Our decision = we reject Ho because value 80 is not in CI.(Confidence interval).
#____________________________________________________________________________________________

#_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

# PART 2. 
# Using dataset, make a decision whether the variance of two variable is the same at the level of alpha=0.05.
# Comparison of variance between variables Reading and Writing. 

x=data$Reading
y=data$Writing
var.test(x, y, ratio = 1,
         alternative = c("two.sided"),conf.level = 0.95)
#___________________________________________________________________________________________

                                  #####TEST RESULTS#####
                             
                             #F test to compare two variances

                             #data:  x and y
                             #F = 1.9326, num df = 424, denom df = 403, p-value = 3.724e-11
                             #alternative hypothesis: true ratio of variances is not equal to 1
                             #95 percent confidence interval:
                             #  1.592824 2.343642
                             #sample estimates:
                             #  ratio of variances 
                             #1.932563 
#____________________________________________________________________________________________
# F value = 1.9326 is inside confidence interval CI(1.592824 - 2.343642) so we reject H0
#Our decision = is based on interval of ration of variance,  so we reject H0! 
# Variances of Reading and Writing variables are not the same. 
