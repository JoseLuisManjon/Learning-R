# Vector 

# 3
#♥ program to append value to a given empty vector

x <- vector("numeric", length=5)
   # Otra manera de crear un vector vacio
nc<-5
means<-numeric(nc)

x<-append(x,6)
print(x)

# 6
# program to find Sum, Mean and Product of a Vector
vector_6<- c(2, 5, 6, 1)
print(sum(vector_6))
print(mean(vector_6))
print(prod(vector_6))

# 7
#• program to find Sum, Mean and Product of a Vector, ignore element like 
#  NA or NaN.

vector_7<- c(2, 5, Na, 6, 1, NaN)
print(sum(vector_7, na.rm = TRUE))
print(prod(vector_7, na.rm = TRUE))
print(mean(vector_7, na.rm = TRUE))

# 8
#  program to find the minimum and the maximum of a Vector.

print(max(vector_6)) 
print(min(vector_6)) 

# 9
# program to sort a Vector in ascending and descending order

sort(vector_6, decreasing=TRUE)  #descendente
sort(vector_6, decreasing=FALSE)  #ascendente

# 10
#  program to test whether a given vector contains a specified element.

Vector_10 <- c(2, 6, 9, 12, 52)
print(is.element(52, Vector_10))

# 12 
# program to access the last value in a given vector.

vector1<- c(2, 6, 9, 12, 52,7)
vector1[[length(vector1)]]
# Otra forma
print(tail(vector1, n=1))

# 13
# program to find second highest value in a given vector.
vector13<- c(2, 6, 9, 12, 52,7)
print(sort(vector13, partial<-l-1)[l-1])
n<- 4
print(sort(vector13, TRUE)[n])

# 14
#  find nth highest value in a given vector.
n<- 4
print(sort(vector13, TRUE)[n]) #♦ Tb se puede aplicar al ejerc anterior.

# 16
# convert given dataframe column(s) to a vector
# Creo un df
nombre<- c("Pedro", "Juan", "Ines")
edad<- c(25, 53, 49)
employees_df <- data.frame(nombre,
                           edad)

employees2_df <- data.frame(nombre=c("Pedro", "Juan", "Ines","Sofia","Andrés"),
                            edad=c(25,53,49,21,37))
# Tres maneras distintas de seleccionar una columna
X_dfv<- employees2_df[,2]
employees2_df[,'edad']
employees2_df$edad

# 20
#  program to reverse the order of given vector.

rev(X_dfv)

# 23
# program to convert two columns of a data frame to a named vector.

X_dfv2<- employees2_df()
