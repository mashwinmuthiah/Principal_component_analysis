#Cereals data set
cereal <- read.csv("Cereals(1).csv")
#
str(cereal)
#PCA using princomp
pcs <- princomp(data.frame(cereal$calories, cereal$rating))
#
summary(pcs)
#standard deviation of the principle components
pcs$sdev
#loadings (coefficeints)
pcs$loadings
#scores (coordinates on principle components)
pcs$scores[1:5,]
#PCA using prcomp: all numerical variables
pcs <- prcomp(na.omit(cereal[,-c(1:3)]))
#
summary(pcs)
#standard deviation
pcs$sdev
#rotations (=loadings)
pcs$rotation[,1:5]
#scores (=x), first 5 cereals and first 5 principle components
pcs$x[1:5,1:5]
#plot variances of the principle components
plot(x=c(1:13), y=pcs$sdev^2, type = "l", col = "red", xlab = "Principle compoent", 
     ylab = "Variance", main = "Variance of the Principle Componnets")
#PCA with standardized data
pcs <- prcomp(na.omit(cereal[,-c(1:3)]), scale.= T)
#
summary(pcs)
#standard deviation
pcs$sdev
#rotations (=loadings)
pcs$rotation[,1:5]
#scores (=x), first 5 cereals and first 5 principle components
pcs$x[1:5,1:5]
#plot variances of the principle components
plot(x=c(1:13), y=pcs$sdev^2, type = "l", col = "red", xlab = "Principle compoent", 
     ylab = "Variance", main = "Variance of the Principle Componnets")

