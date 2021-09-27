
# Operaciones lógicas -----------------------------------------------------

## Operadores relaciones
### Mayor que `>`
4 > 2
2 > 4

### Menor que `<`
4 < 2
2 < 4

### Igual que `==`
1 == 0
1 == 1

### No igual que `!=`
1 != 0
1 != 1

### Mayor o igual que `>=`
### Menor o igual que `<=`
1 > 1
1 >= 1

1 < 1
1 <= 1

#### Operaciones lógicas con vectores de múltiples elementos

1:10 > 6

1:10 >= 6

## Operadores lógicos
### AND `&`
a <- 1

a == 1
a != 0
a < 0
a > 1

(a == 1) & (a != 0)

(a == 1) & (a < 0)

(a > 1) & (a < 0)

### OR `|`

(a == 1) | (a < 0)

(a > 1) | (a < 0)

((a == 1) & (a != 0)) | (a < 0)

### NOT `!`

a < 0
!(a < 0)

### ALL `all()`

all(c(TRUE, TRUE, TRUE))

all(c(TRUE, TRUE, FALSE))

all(c(FALSE, FALSE, FALSE))

### ANY `any()`

any(c(TRUE, TRUE, TRUE))

any(c(TRUE, TRUE, FALSE))

any(c(FALSE, FALSE, FALSE))


