## Exercise 12

data = read.csv("Earnings.csv", header=T,sep=";",dec=",")
fix(data)
data=data[1:305,]

convert_values = function(x)
{
	if (x == 1)
	{
		return(0)
	}
	else
	{
		return(1000*x - 1500)
	}
}

new_earnings = sapply(data$Earnings, convert_values)
data$Earnings = new_earnings

convert_genders = function(x)
{
	if (x == 'm')
	{
		return(0)
	}
	else
	{
		return(1)
	}
}

binary_genders = sapply(data$Gender, convert_genders)
data$Gender = binary_genders

boxplot(data$Earnings~data$Level.of.education)
boxplot(data$Earnings~data$Age)
boxplot(data$Earnings~data$Gender)

by(data$Level.of.education,data$Age,mean)
by(data$Level.of.education,data$Age,median)

by(data$Level.of.education,data$Gender,mean)
by(data$Level.of.education,data$Gender,median)

new_ages <- cut(data$Age, 8, labels = seq(1,8))
data$Age = new_ages

boxplot(data$Earnings~data$Age)
by(data$Level.of.education,data$Age,mean)
by(data$Level.of.education,data$Age,median)

## Exercise 13

f=function(x)  (x+3)*3^x
plot(f, -5, -3)
# The minimum is at -3.9
lines(c(-5,-3), c(f(-3.9),f(-3.9)), col="red")

## Exercise 14

plot(c(-1,1,1,-1,-1), c(1,1,-1,-1,1),type="l")
t=seq(0,2*pi, length=500)
lines(cos(t),sin(t),col="blue")

