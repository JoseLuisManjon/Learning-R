## BASIC
# 3
seq(20,50, by=1)
v20_60 <- seq(20, 60)
mean(v20_60)
mean(20:60)
v51_91<- seq(51,91)
sum(seq(51,91))
sum(51:91)

# 4
# create a vector which contains 10 random integer values 
#between -50 and +50

v4<- c(sample(-50:50,10,replace=F))

# 5
#Program to get the first 10 Fibonacci numbers
Fibonacci <- numeric(10)
Fibonacci[1]<- Fibonacci[2]<-1
for (i in 3:10) Fibonacci[i]<- Fibonacci[i-1] + Fibonacci[i-2]
print(Fibonacci)


# 7
#program to print the numbers from 1 to 100 and print "Fizz" for multiples
#of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples
# of both

v7<-seq(1,100)


for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}
# Otra forma pero que solo sirve para los multiplos de 3 y 5
ifelse(V7 %% 3 == 0 & num %% 5, "FizzBuzz", n)

# 9
# program to find the factors of a given number

numero <- 168
for (n in seq(2,numero)){
  if (numero %% n == 0){print(n)}
}

# 10
# find the maximum and the minimum value of a given vector

v10<- c(6,8,2,0,14,26,11)
max(v10)
min(v10)

# 13
# create a list of random numbers in normal distribution and 
# count occurrences of each value.

lista10<- list(rnorm(20, 60,10))

# 15
#create three vectors numeric data, character data and logical data. 
#Display the content of the vectors and their type.

a<- c(2, 6, 7)
b<- c("M", "D","F")
c<- c(TRUE, FALSE, TRUE)
print(class(a))
print(typeof(a))
print(a)
class(b)
print(b)
print(c)
class(c)

# 16
# Create a 5 x 4 matrix , 3 x 3 matrix with labels and fill the matrix
# by rows and 2 × 2 matrix with labels and fill the matrix by columns.

v16_1 <- c(20,20,16,17,17)
v16_2 <- c(11,13,11,8,12)
v16_3 <- c(18,15,15,15,16)
v16_4 <- c("a","b","c","d","h")
matrix(c(v16_1,v16_2,v16_3,v16_4), nrow = 5, ncol = 4)


matrix(1:20, nrow=5, ncol=4,byrow=TRUE, 
       dimnames = list(c("N1","N2", "N3","N4","N5"),
                c("col1","col2","col3","col4")))

#22
#create  bell curve of a random normal distribution

m<- floor(rnorm(10000, 60,10))
t = table(m)
barplot(t)

# 25 y 26
#  create a Dataframes which contain details of 5 employees and display 
# the details.
nombre<- c("Pedro", "Juan", "Ines")
edad<- c(25, 53, 49)
employees_df <- data.frame(nombre,
                           edad)

employees2_df <- data.frame(nombre=c("Pedro", "Juan", "Ines","Sofia","Andrés"),
                            edad=c(25,53,49,21,37))

print(summary(employees2_df))

