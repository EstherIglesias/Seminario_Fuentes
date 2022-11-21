 

# Importación de datos xls.

 #Datos de alimentación:

library(readxl)
Comidaxsexoencolumnas <- read_excel("input/data/Comidaxsexoencolumnas.xls", 
                                      +     col_types = c("text", "numeric", "numeric", 
                                                          +         "numeric"))
View(Comidaxsexoencolumnas)

 #Datos de paro:

library(readxl)
ParoxsexoEncolumnas <- read_excel("input/data/ParoxsexoEncolumnas.xls", 
                                    +     col_types = c("text", "numeric", "numeric", 
                                                        +         "numeric"))
View(ParoxsexoEncolumnas)

#Hacemos un resumen para ver en que se diferencian nuestros datos
summary(comida)
summary(paro)

# Unión de los datos
library(tidyverse)
union <- full_join(x= paro, y=comida)


#Acuerdate de hacer pull siempre antes de trabajar por si acaso
#Tambien de hacer push luego jejeje 
library(tidyverse)
esther <- left_join(x= paro, y =comida, by = c("2","3","4","5","6","7","8","9","10"))


#Debemos hacer un pivot_longer para disminuir el número de columnas y aumentar el número de filas
%>%
  pivot_longer(cols = )