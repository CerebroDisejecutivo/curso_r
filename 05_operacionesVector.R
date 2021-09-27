
# Operaciones con Vectores ------------------------------------------------

## Podemos hacer operaciones con dos vectores 
1:10 + 1:10

## En caso de que un vector tenga más elementos que otro...
## el vector con menos elementos se "recicla"
1:10 * 2

1:10 * c(0, 1)

## En algunos casos, no todos los elementos se reciclan...
## el mismo número de veces
1:10 * c(0, 1, 2)
