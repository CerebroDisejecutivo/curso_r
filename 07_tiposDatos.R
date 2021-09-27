
# Tipos de datos ----------------------------------------------------------

## Existen distintos tipos de datos en R
### Ejemplos: Logical, Numeric y Character

logical <- c(TRUE, TRUE, FALSE)

numeric <- c(1, 2, 3)

character <- c("a", "b", "c")

### Revisa el tipo de dato de un vector, función `typeof()` y `class()`
typeof(logical)

typeof(numeric)
class(numeric)

typeof(character)

### La clase numeric se subdivide en integer y double
integer <- c(1L, 2L, 3L)

double <- c(1.0, 2.0, 3.0)

integer
double

typeof(integer)
typeof(double)

object.size(integer)
object.size(double)


## Valores `NA`

1 + NA

NA ^ 2

NA ^ 0

calificaciones <- c(8.6, 10, 5, 7, 9)
calificaciones_NA <- c(8.6, 10, NA, 7, 9)

mean(calificaciones)

mean(califaciones_NA)

mean(califaciones_NA, na.rm = TRUE)

median(calificaciones)
median(califaciones_NA, na.rm = TRUE)


## Prueba lógica de tipo de dato ...
## Familia de funciones is.*()

is.integer(integer)
is.double(integer)

is.double(double)
is.integer(double)

is.numeric(double)
is.numeric(integer)

is.character(character)
is.character(integer)

is.logical(logical)
is.logical(integer)

is.na(calificaciones_NA)

## Nota: Los dígitos y las palabras TRUE y FALSE pueden ...
## estar representados como character

character_digits <- c("1", "2", "3")
character_digits

c(1, 2 , 3)

typeof(character_digits)

is.numeric(character_digits)
is.character(character_digits)

character_logical <- c("TRUE", "FALSE")
character_logical

c(TRUE, FALSE)

typeof(character_logical)

is.logical(character_logical)
is.character(character_logical)