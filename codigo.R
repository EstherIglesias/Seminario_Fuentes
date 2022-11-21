 

# Importación de datos xls.

library(readxl)
comida <- read_excel("input/data/comida.xls")
View(comida)

library(readxl)
paro <- read_excel("input/data/paro.xls")
View(paro)

# Unión de los datos
library(tidyverse)
union <- full_join(x= paro, y=comida)


#Acuerdate de hacer pull siempre antes de trabajar por si acaso
#Tambien de hacer push luego jejeje 
library(tidyverse)
esther <- left_join

#Hacemos un resumen para ver en que se diferencian nuestros datos
summary()
summary()

#Debemos hacer un pivot_longer para disminuir el número de columnas y aumentar el número de filas
%>%
  pivot_longer(cols = )