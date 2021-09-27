
# Asignación a variables --------------------------------------------------

## Operador de asignación `<-` 
### Shortcut: 'Alt' + '-'

x <- 1
x

### Operaciones con variables
x + 1

## Reasignar una variable
x <- 2
x

## Asignar una variable a otra
y <- x
y

x <- 0
x
y 

### Nombres de variables
#### Contienen: letras, números, puntos y guiones

## Imprimir nombres de variables en el ambiente
ls()

## Imprimir memoria utilizada por objeto en el ambiente
object.size(x)

## Eliminar variables
rm(x)

a <- 1
b <- 2
c <- 3

### Eliminar todas las variables
rm(list = ls())

## Copiar variables

