
# Lectura de Datos --------------------------------------------------------

## Working Directory
### Imprimir con `getwd()`
getwd()
### Cambiar con `setwd()`
setwd()

## `here()` imprime el directorio que contiene el archivo .Rproj utilizado
here::here()

## Imprimir contenido de un directorio con `sys.glob()`
Sys.glob(here("simu_data/*"))

## Lectura de datos
### Comma separated values (csv)
### Tab separated values (tsv)
### Todos son simples archivos de texto

### Familia de funciones `read.*()`
behav_test <- read.csv(here("simu_data/0519.csv"))

head(behav_test)

### Ejemplo de análisis de una variable subdividiendola por otra
with(behav_test, tapply(rc, block, mean))
with(behav_test, tapply(rt, block, mean))

