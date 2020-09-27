# 1 
# Create a list containing strings, numbers, vectors and a logical values.

lista<- list("a", "b", "c", c(2,6,9), TRUE,FALSE,TRUE, 2.6, 39)

#♥ 8
#◘ program to merge two given lists into one list

lista_2<- list("tres", "barco",55)
New_list<-c(lista, lista_2)

# 10
# create a list of dataframes and access each of those df from the list

un_df <- data.frame(nombre=c("Pedro", "Juan", "Ines","Sofia"),
                            edad=c(25,53,49,21), 
                    puesto=c("botones","albañil","pintor","tornero"))

nombre_peliculas <- c("Conan", "Octubre rojo", "America", "Joker")
puntuacion <- c(7.9,7.2,6.1,6.3)
posterior_2005 <- c(FALSE,FALSE,TRUE,TRUE)

peliculas_df <- data.frame(nombre_peliculas,
                           puntuacion, 
                           posterior_2005)
lista_df<- list(un_df, peliculas_df)
print(lista_df[[1]])
print(lista_df[[2]])

# 11
# Program to count number of objects in a given list.

lista_11 <- c(7.9,7.2,6.1,6.3, 18, 25, 7.2, 6.1, 7.2)
length(lista_11)

# 12
#convert a given dataframe to a list by rows

peliculas_df

lista_12<- split(peliculas_df, seq(nrow(peliculas_df)))

lista_<- list(peliculas_df['nombre_peliculas'], 
               peliculas_df['puntuacion'],
               peliculas_df['posterior_2005'])

# 14
# program to assign NULL to a given list element

lista_14 = list(18, 32, 13, 7, 5)
lista_14[4] = list(NULL) 
lista_14[1] = list(NULL) 
print(lista_14)

