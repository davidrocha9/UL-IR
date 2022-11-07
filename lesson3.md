# Lesson 3

### Ex. 9

```
(A=matrix(c(1,3,4,3,-2,-1,-1,2,6),3,3))
(B=matrix(c(5,1,3),3,1))
solve(A,B)
```

### Ex.10

```
mean(iris[iris$Species == 'setosa',]$Petal.Width)
mean(iris[iris$Species == 'versicolor',]$Petal.Width)
mean(iris[iris$Species == 'virginica',]$Petal.Width)
mean(iris$Petal.Width)
```

### Ex.11

```
sumdiag = function(x)
{
	matrix_size = nrow(x)
	diag_matrix = matrix(0:0, matrix_size, matrix_size, byrow = T)
	for (i in 1:matrix_size)
	{
		val = sum(x[,i]) + sum(x[i,]) - x[i,i]
		diag_matrix[i,i] = val
	}

	diag_matrix
}
```