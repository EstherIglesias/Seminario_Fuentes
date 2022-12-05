 

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

#intento grafico
library(tidyverse)
library("ggplot2")
ggplot(data = union, mapping = aes(Mujeres, Hombres)) + labs(x="Mujeres", y="Hombres", subtitle="relacion paro y alimentación")+ theme_classic()

#Gráfico relación paro y alimentación:
library(tidyverse)
ggplot(data = union) + geom_point(mapping = aes( x = Mujeres, y= Hombres, color= Mujeres))
#no se muy bien que es esto
library(tidyverse)
?ggplot2
# Cargamos los datos
data(union)
# reseña del set de datos
?union
str(union)

# Definición de las tres mínimas variables en un gráfico
ggplot(union = mpg, aes(x = Mujeres, y = Hombres))

install.packages("ggplot2")
library("ggplot2")

#Gráfico solo alimentación
library(tidyverse)
ggplot(data = Comidaxsexoencolumnas) + geom_smooth(mapping = aes( x = Mujeres, y= Hombres))

#Gráfico solo paro.
library(tidyverse)
ggplot(data = ParoxsexoEncolumnas) + geom_point(mapping = aes( x = Mujeres, y= Hombres))



