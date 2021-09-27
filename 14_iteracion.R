
# Iteración  --------------------------------------------------------------

archivos <- Sys.glob(here("simu_data/*"))
archivos

## No repetir escribir código inecesariamente

lista_vacia <- vector(mode = "list", length = length(archivos))

1:length(archivos)
seq_along(archivos)

## For loop
for(index_archivo in seq_along(archivos)){
  lista_vacia[[index_archivo]] <- read.csv(archivos[index_archivo])
}
lista_vacia

## Familia `apply`, función `lapply()`
lapply(archivos, read.csv)
