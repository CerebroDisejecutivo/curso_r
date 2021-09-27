
# Paquetes ----------------------------------------------------------------

## Instalar paquetes escritos por otros usuarios ayuda a extender ...
## lo que podemos hacer con R

## Instalar paquetes, función `install.packages()`
install.packages("here")

## Usar funciones del paquete
here::here()
here()

## Función `library()`
library(here)

here()



# Escribir funciones propias ----------------------------------------------

mi_funcion <- function(x, y){
  (x^y + y^x)
  
}

mi_funcion(2,4)

mi_funcion(0,1000)
