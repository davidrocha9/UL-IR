# Lesson 2

### Exercise 4

```
c(4,3,2,1,0)
4:0
seq(4,0)
```

### Exercise 5

```
(1:30)^3
```

### Exercise 6

```
seq(2,20,2)^2
```

### Exercise 7

```
sum((1:95)^3)
```

### Exercise 8

```
#Experiment 1

exp1_A = sample(0:1,10,rep=T)
exp1_B = sample(0:1,10,rep=T)
exp1_C = sample(0:1,10,rep=T)

mean_exp1 = c(0.5 - mean(c(exp1_A, exp1_B, exp1_C)))

#Experiment 2

exp2_A = sample(0:1,100,rep=T)
exp2_B = sample(0:1,100,rep=T)
exp2_C = sample(0:1,100,rep=T)

mean_exp2 = c(0.5 - mean(c(exp2_A, exp2_B, exp2_C)))

#Experiment 3

exp3_A = sample(0:1,1000,rep=T)
exp3_B = sample(0:1,1000,rep=T)
exp3_C = sample(0:1,1000,rep=T)

mean_exp3 = c(0.5 - mean(c(exp3_A, exp3_B, exp3_C)))

# Final Result

means = abs(c(mean_exp1, mean_exp2, mean_exp3))
which.min(means)
```