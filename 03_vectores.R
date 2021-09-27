
# Creación de vectores ----------------------------------------------------

## Los vectores son la estructura de datos más simple en R
## Función `c()` (concatenar)
c(1, 2 , 3, 4)

## Series numéricas
### Operador `:`
1:4

4:1

-5:5

### Función `seq()`
seq(1, 4)

seq(2, 10, 2)

seq(1, 10, 2)

seq(1, 10, 1)

seq(-10, -2, 2)

## Función `rep()`
rep(1, 4)

### Repetir vector
rep(1:4, 4)

### Repetir elementos
rep(1:4, each = 4)

## Función `c()` puede concatenar vectores
c(0, 1:4, rep(5,6), seq(10, 100, 10))

## Tamaño de un vector, función `length()`
length(1:10)
