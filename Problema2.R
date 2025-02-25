#Codigo para problema 2
mis_dades <- iris

#repaso practica 1
mean(mis_dades$Sepal.Length) #media
sd(mis_dades$Sepal.Length)  #standard desviation: dispersion de la media
dim(mis_dades) #numero de variables y muestra del experimento
names(mis_dades) #nombre de varaibles
hist(mis_dades$Sepal.Length) #plot


#teoria
# buscar correlaciones entre varaibles para ver su dependencia
# regresion lineal: obtenemos una prediccion del valor y en funcion del valor de x


x <- mis_dades$Petal.Length
y <- mis_dades$Sepal.Length
plot(x, y)  # vemos que, dado un valor de x1 mayor que x2, el promedia de y tambien es mayor

m <- sum( (x-mean(x))*(y-mean(y)) )/sum( (x-mean(x))^2 )
b <- mean(y) - m*mean(x)

prediccion <- m*1.5+b
prediccion

mod <- lm(y~x)
# ~ = AltGr + 4 + ESPACIO
summary(mod)

xpred1 <- data.frame(x=1.5)
predict(mod, xpred1)
xpred2 <- data.frame(x=1:7)
predict(mod, xpred2)
xpred3 <- data.frame(x=x)
predict(mod, xpred3)


xpred <- data.frame(x=x)
ypred <- predict(mod, xpred)

plot(x, y)
lines(x, ypred)

Rsq <- sum( (ypred-mean(y))^2 ) / sum( (y-mean(y))^2 )  # R^2   -> R: coef. de pearson
