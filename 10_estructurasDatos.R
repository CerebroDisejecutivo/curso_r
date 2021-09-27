
# Estructuras de datos ----------------------------------------------------

## Vectores, Matrices, Arreglos, Listas y Dataframes

### Vector: Una dimensión, un sólo tipo de dato
### Matrix: Dos dimensiones, un sólo tipo de dato
### Array: Más de dos dimensiones, un sólo tipo de dato
### List: Una dimensión, objetos de distintos tipos y tamaños
### Dataframe: Dos dimensiones, vectores de distintos tipos de datos ...
### pero del mismo tamaño 

#### Nombrar elementos con función `names()`, `colnames()` y `row.names`

### Función `vector()`
args(vector)
vector(mode = "numeric", length = 10)

#### Agregar nombres a vector
mi_vector <- 1:4
mi_vector
names(mi_vector)
names(mi_vector) <- c("Uno", "Dos", "Tres", "Cuatro")
mi_vector
names(mi_vector)

### Función  `matrix()`
args(matrix)
matrix(0, 3, 4)

matrix(1:12, 3, 4)
matrix(1:12, 3, 4, byrow = TRUE)

matrix(1:12, 3, 4) * c(1,0)
matrix(1:12, 3, 4, byrow = TRUE) * c(1,0)


#### Agregar nombres a matriz
mi_matriz <- matrix(c(1,2,3, 8.5, 7.2, 9.4, 35, 28, 42), 3, 3)
mi_matriz

colnames(mi_matriz) <- c("Sujeto", "Calificación", "edades")
mi_matriz
colnames(mi_matriz)

row.names(mi_matriz) <- c("Panchita", "Lupita", "Juanita")
mi_matriz

### Función `list()`
numeric <- 1:4
character <- c("a", "b", "c")
logical <- c(TRUE, FALSE)

list(numeric, character, logical)
list(numeros = numeric, letras = character, booleano = logical)

#### Agregar nombres
mi_lista <- list(numeric, character, logical)
names(mi_lista) <- c("numeros", "letras", "booleano")
mi_lista

### Función `data.frame()`
nombres <- c("Diego", "Talia", "Sarael", "Jazmin")
calificaciones <- c(6, 10, 9, 8.5)
edades <- c(49, NA, 23, 32)

data.frame(nombres, calificaciones, edades)
data.frame(nombre = nombres, calificacion = calificaciones, edad = edades)

mi_df <- data.frame(nombres, calificaciones, edades)

#### Cambiar nombres
colnames(mi_df)
colnames(mi_df) <- c("nombre", "califacion", "edad")
mi_df

#### Columnas de dataframe deben tener mismo tamaño
length(numeric)
length(character)
length(logical)

data.frame(numeric, character, logical)

### Coerción

#### Lista a dataframe
mi_lista2 <- list(nombre = nombres, 
                  califiacion = calificaciones, 
                  edades = edades)
mi_lista2

as.data.frame(mi_lista2)

#### Dataframe a lista
as.list(mi_df)

#### Una lista puede contener datos con distintas estructuras ...
#### incluso otras listas
list(mi_vector, mi_matriz, mi_df, mi_lista)
