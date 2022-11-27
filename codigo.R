 

# Importación de datos xls.

 #Datos de alimentación:

library(readxl)
Comidaxsexoencolumnas <- read_excel("input/data/Comidaxsexoencolumnas.xls", col_types = c("text", "numeric", "numeric", "numeric"))
View(Comidaxsexoencolumnas)

 #Datos de paro:

library(readxl)
ParoxsexoEncolumnas <- read_excel("input/data/ParoxsexoEncolumnas.xls", col_types = c("text", "numeric", "numeric", "numeric"))
View(ParoxsexoEncolumnas)

#Hacemos un resumen para ver en que se diferencian nuestros datos
summary(ParoxsexoEncolumnas)
summary(Comidaxsexoencolumnas)

# Unión de los datos
library(tidyverse)
union <- full_join(x= ParoxsexoEncolumnas, y=Comidaxsexoencolumnas)

summary(union)

#otra union de datos señalando las columnas que debe usar:
library(tidyverse)
vercomoqueda <- full_join(x= ParoxsexoEncolumnas, y=Comidaxsexoencolumnas, by = c("Ambos sexos", "Mujeres", "Hombres"))

#Relación entre la alimentación y el desempleo.
library(ggplot2)
ggplot(data = union, mapping = aes(x=  Mujeres, y = Hombres )) + labs(x="Mujeres", y="De 40 a 44 años", subtitle="relacion paro y alimentación")+ theme_classic()

#intento grafico
library(ggplot2)
ggplot(data = union, mapping = aes(x=  Mujeres, y = Hombres )) + labs(x="Mujeres", y="Hombres", subtitle="relacion paro y alimentación")+ theme_classic()

