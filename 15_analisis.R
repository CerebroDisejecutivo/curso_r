
# Analisis ----------------------------------------------------------------

## Tidyverse
library(tidyverse)
library(here)

## Manipulación de strings con `stringr`
## Función `str_extract()`
archivos <- Sys.glob(here("simu_data/*")) 
id <- str_extract(archivos, "[0-9]+")

## Lectura de datos
test <- read_csv(archivos[1])
test

## Manipulación de datos con dplyr
## Seleccionar columnas con `select()`

select(test, block, rc)

## Seleccionar filas con `filter()`

filter(test, block == "0b")

## Agregar o modificar columnas con `mutate()`
mutate(test, rt_segundos = rt / 1000)

mutate(test, rt = rt / 1000)

## Analizar y resumir datos con `summarise()`
summarise(test, mean_rt = mean(rt))

## Agrupar observaciones con `group_by()`
summarise(group_by(test, block), mean_rt = mean(rt))

## Pipe `%>%`
## Enviar output de una función a otra
## Atajo: "Ctrl" + "Shift" + "m"
group_by(test, block) %>%
  summarise(mean_rt = mean(rt))

## Analizar más de una variable con `across()`
group_by(test, block) %>%
  summarise(across(c("rc", "rt"), mean))

## Funciones anónimas
analisis_sujeto <- 
lapply(archivos, function(x){
  read_csv(x) %>% 
    group_by(block) %>% 
    summarise(across(c("rc", "rt"), mean))
})

names(analisis_sujeto) <- id
analisis_sujeto

## Unir elementos de lista en un sólo dataframe
df_muestra <- 
bind_rows(analisis_sujeto, .id = "sujeto")

## Análisis grupal
group_by(df_muestra, block) %>% 
  summarise(across(c("rc", "rt"), mean))

## Boxplot 
### Funciones de r base
boxplot(df_muestra$rc ~ df_muestra$block)

with(df_muestra, boxplot(rt ~ block))

### ggplot
ggplot(df_muestra, aes(x = block, y = rc)) +
  geom_boxplot()


## Histograma
hist(rnorm(1000))
## Scatterplot
plot(cars$speed, cars$dist)

## Ejemplo de ggplot
head(gapminder::gapminder)
ggplot(gapminder::gapminder, 
       aes(x = gdpPercap, y = lifeExp, size = pop, color = country)) +
  geom_point(alpha = .7, show.legend = FALSE) + 
  facet_wrap(~ year)
