
# Coercion ----------------------------------------------------------------

## Las operaciones que podemos realizar con vectores dependen del tipo de dato
## Los vectores sólo pueden contener elementos de un tipo de dato

calificaciones_character <- c("8.6", "10", "5", "7", "9")

mean(calificaciones_character)

## Coerción: transformar de un tipo de dato a otro

### Coerción Explicita
#### Familia de funciones `as.*()`

as.double(calificaciones_character)

mean(as.numeric(calificaciones_character))

as.integer(calificaciones_character)

zeroOne <- rep(c(0,1), each = 4)
zeroOne

as.logical(zeroOne)

as.logical(0:10)

as.logical(c("TRUE", "FALSE"))

as.character(1:10)

### Coerción Implicita
#### Logical -> Integer -> Double -> Character

TRUE + TRUE

TRUE + FALSE

5L + 5.5

c("1", "2", 3)
