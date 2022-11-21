 

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


#Acuerdate de hacer pull siempre antes de trabajar por si acaso
#Tambien de hacer push luego jejeje 


