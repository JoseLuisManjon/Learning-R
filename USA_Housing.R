#Obtengo la ruta a la carpeta donde está la base de datos que quiero descargame
# y utilizar aquí     
file.choose()
ruta_csv <- "C:\\Users\\jl\\Documents\\Jose_Luis\\Cursos\\The_bridge\\
                      R-basics\\day4\\data\\USA_Housing.csv"

# Veo donde está el archivo en el que estoy trabajando
getwd()
setwd("C:\\Users\\jl\\Documents\\Jose_Luis\\Cursos\\The_bridge")
# cambio el directorio
# de trabajo hasta la última carpeta que es común al archivo a leer
# y donde se encuentra mi directorio de trabajo (este archivo)
getwd()
# leer los datos

datos <- read.csv("R-basics/day4/data/USA_Housing.csv", header = TRUE, 
                  sep = ",")
datos
install.packages("ggplot2")
install.packages("caret")
install.packages("lattice")
install.packages("corrplot")
library(tidyverse)
library(caret)
library(ggplot2)
library(dplyr)
require(psych)

set.seed(333)

##############################
# Linear Regression multiple #
##############################

datos_1 <- select(datos, Avg..Area.Income, Avg..Area.House.Age, 
                  Avg..Area.Number.of.Rooms, Avg..Area.Number.of.Bedrooms, 
                  Area.Population, Price)
# Estudio de valores NaN
mean(is.na(datos_1)) # Resultado da cero implica que no hay Na en este df.

# ESTUDIO DE LOS DATOS Y BUSQUEDA CORRELACION

# Matriz con gráficos de dispersión de todas las variables
pairs(datos_1)

# Matriz de correlación.
require(corrplot)
corrplot(round(cor(datos_1), digits = 3), type = "lower")

pairs(datos_1[ , 1:6],
      col = "blue",                               # color
      pch = 18)                                   # Tamaño de los ptos
 
   
# Distribución de densidad de las variables cuantitativas del modelo

multi.hist(x = datos_1, dcol = c("blue", "red"), 
           dlty = c("dotted", "solid"))
multi.hist(sat.act,dcol= c("blue","red"),dlty=c("dotted", "solid")) 

# gráfico que combina los diagramas de dispersión, 
# la distribución y los valores de correlación.

require(GGally)
ggpairs(datos_1, lower = list(continuous = "smooth"), 
        diag = list(continuous = "bar"), axisLabels = "none")


# creo la regresión linear multivariable 
fit <- lm(Price ~., data = datos_1)
summary(fit)
# Analizando los datos obtenidos en summary los predictores que tienen una
# relación estadísticamente significativa con el precio son Av-Area_income,
# Avg.Area.Age, number.of.rooms y Area.Population.
# El valor p-value tan bajo indica que el modelo es bajo y que existe relacion
# entre los predictores y el target.

## USANDO CARET

# divido train/test
# indico cual es la variable a predecir
inTrain <- createDataPartition(y = datos_1$Price, p = 0.8, 
                               list = FALSE, times=1)
training <- datos_1[inTrain,]
test <- datos_1[-inTrain,]

dim(training)
dim(test)

# entreno el modelo
fit_train <- train(Price ~., data= training, method = 'lm', metric="RMSE")
fit_train$finalModel

# predicción con el modelo generado
pred_datos_1train <- predict(fit_train, newdata = training)

# calculamos el error RMSE
cal_rmse <- RMSE(pred_datos_1train, training$Price)

# predección con el conjunto de test
pred_datos_1test <- predict(fit_train, newdata=test)

# evaluamos con test 
comparing <- data.frame(pred = pred_datos_1test, real = test$Price)

# calculamos error
postResample(pred_datos_1test, test$Price)

