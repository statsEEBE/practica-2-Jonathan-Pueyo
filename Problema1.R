#Codigo para problema 1

# coeficient de determiancio => R^2
Rsq <- 0.1923
# coeficint de correlacio (de pearson) => sqrt(R^2)
sqrt(0.1923)
# por una unidad de aumento en assets (x), variacion de mercat value (y)
m <- 0.06576
# definimos la recta ypred = x*m + b
b <- 11.79755
prediccion <- 647.1*m+b


#cargar datos de un fichero de texto
data <- read.delim("air.txt", dec=",", sep="\t")
data

data <- read.table("air.txt", dec=",", header=TRUE, sep=" ")
