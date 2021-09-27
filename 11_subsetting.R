
# Subsetting --------------------------------------------------------------

## Subsetting: Obtener un subconjunto de datos de un objeto

## Vector
mi_vector <- 1:4
names(mi_vector) <- c("Uno", "Dos", "Tres", "Cuatro")

### Indice
mi_vector[1:2]
mi_vector[c(1,3)]
mi_vector[-4]

### Nombres
mi_vector[c("Tres", "Cuatro")]
mi_vector[c("Cuatro", "Tres")]

### Lógico
mi_vector[c(TRUE, FALSE, TRUE, FALSE)]

mi_vector >= 3
mi_vector[mi_vector >= 3]

## Matriz
mi_matriz <- matrix(c(1,2,3, 8.5, 7.2, 9.4, 35, 28, 42), 3, 3)
colnames(mi_matriz) <- c("Sujeto", "Calificación", "edades")
row.names(mi_matriz) <- c("Panchita", "Lupita", "Juanita")
mi_matriz

### Indice
mi_matriz[c(1,3), 1:2]
mi_matriz[1:2, ]
mi_matriz[, 1:2]
mi_matriz[-1, -2]

### Nombre 
mi_matriz["Lupita", c("Calificación", "Edad")]
mi_matriz[2:3, c("Calificación", "Edad")]

### Dataframe
nombres <- c("Diego", "Talia", "Sarael", "Jazmin")
calificaciones <- c(6, 10, 9, 8.5)
edades <- c(49, NA, 23, 32)
mi_df <- data.frame(nombre = nombres, 
                    calificacion = calificaciones, 
                    edad = edades)

#### Indice
mi_df[c(2,4), 1:2]
mi_df[, -1]
mi_df[, 1]

### Lógico
mi_df[, 2] 
mi_df[, 2] >= 9
mi_df[mi_df[, 2] >= 9, ]

### Nombres
mi_df$nombre
mi_df[, c("nombre", "edad")]
mi_df[1:3, c("nombre", "edad")]

mean(mi_df$calificacion)

## Lista

numeric <- 1:4
character <- c("a", "b", "c")
logical <- c(TRUE, FALSE)

mi_lista <- list(numeros = numeric, letras = character, booleano = logical)

list(mi_vector, mi_matriz, mi_df, mi_lista)

### Indice
mi_lista[1]
sum(mi_lista[1])

### Obtener elementos de lista vs elementos por si solos
mi_lista[[1]]
sum(mi_lista[[1]])

### Nombres
mi_lista$booleano
mi_lista[c("letras", "booleano")]

### Objetos dentro de la lista
mi_lista$letras[2]
