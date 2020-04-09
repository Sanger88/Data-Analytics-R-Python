                              



# 1. LDA Analysis 

install.packages('car')
library(car)
data<-read.csv(file.choose(),header=TRUE)
attach(data)
head(data)
View(data[1:5])  
scatterplotMatrix(data[2:5])  #### red dash lines represent confidence interval.

library(MASS)
dataset.lda <- lda(prgLng ~ ., data=data[2:5])  
dataset.lda 

##########################################################################

# 2. Principal Component Analysis

data<-read.csv(file.choose(),header=TRUE)
fit <- princomp(data, cor=TRUE)
summary(fit)   
loadings(fit) 
plot(fit,type="lines") # Plot of principle components versus their variance. 

##########################################################################

# 3. K-Means Analysis. 
data<-read.csv(file.choose(),header=TRUE)
k.means.fit <- kmeans(data, 4) # k = 4 is the number of classes in prgLng
attributes(k.means.fit)

# Centroids(arithmetic mean)
k.means.fit$centers
# Cluster size:
k.means.fit$size

wssplot <- function(data, nc=4, seed=1234){ 
  wss <- (nrow(data)-1)*sum(apply(data,2,var))
  for (i in 2:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(data, centers=i)$withinss)}
  plot(1:nc, wss, type="b", xlab="Number of Clusters",
       ylab="Within groups sum of squares")}
clusters<-wssplot(data, nc=4)/sum(wssplot(data, nc=4))
cumcluster<-cumsum(clusters)
cumcluster[1]

wssplot(data, nc=4) 
wss=c(1, 2, 3, 4)
nwss=wss/sum(wss) # Normalised WSS
nwss

swss=cumsum(nwss) # cumulative WSS
swss

##########################################################################

# 4. Canonical Correlation Analysis
install.packages('ggplot2') # install ggplot2 packages
library(ggplot2)

install.packages('GGally') # install GGally packages
library(GGally)


install.packages('CCA') # install GGally packages
library(CCA)


data<-read.csv(file.choose(),header=TRUE)
View(data)
colnames(data) <- c("projID", "prgLng", "arch", "sizeProj", "effortProj")
summary(data)

x  <- data[, 2:3] # the set of variables "prgLng" and "arch"
x
y  <- data[, 4:5]  # the set of variables "sizeProj" and "effortProj"
y


cor(x,y)  # correlation between two sets of variables 


matcor(x, y) # to see the autocorrelations and cross-corrlations

ggpairs(x)  # ggplot for x

ggpairs(y)  # ggplot for y  # # # positive correlation - with increase of control, concept increases aswell.  
ggpairs(data)
cc1 <- cc(x, y)

# display the canonical correlations
cc1$cor
