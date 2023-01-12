 
# Importación de datos xls.

 #Datos de alimentación:

library(readxl)
Comidaxsexoencolumnas <- read_excel("input/data/Comidaxsexoencolumnas.xls", 
                                    col_types = c("text", "numeric", "numeric", "numeric"))
View(Comidaxsexoencolumnas)

 #Datos de paro:

library(readxl)
ParoxsexoEncolumnas <- read_excel("input/data/ParoxsexoEncolumnas.xls", 
                                  col_types = c("text", "numeric", "numeric", "numeric"))
View(ParoxsexoEncolumnas)

#Hacemos un resumen para ver en que se diferencian nuestros datos:
summary(ParoxsexoEncolumnas)
summary(Comidaxsexoencolumnas)

# Unión de los datos
library(tidyverse)
union <- full_join(x= ParoxsexoEncolumnas, y=Comidaxsexoencolumnas)

#Hacemos un resumen de los datos que hemos obtenido al hacer la unión de los datos:
summary(union)

#otra union de datos señalando las columnas que debe usar:
library(tidyverse)
vercomoqueda <- 
  full_join(x= ParoxsexoEncolumnas, y=Comidaxsexoencolumnas, 
            by = c("Ambos sexos", "Mujeres", "Hombres"))

#Gráfico relación paro y alimentación:
library(tidyverse)
ggplot(data = union) + 
  geom_point(mapping = aes( x = Mujeres, y= Hombres, color= Mujeres))

<<<<<<< HEAD


=======
>>>>>>> fe1c280138dd20511f8997e99ab36cb9343b9d8b
install.packages("ggplot2")
library("ggplot2")

#Gráfico solo alimentación
library(tidyverse)
ggplot(data = Comidaxsexoencolumnas) + 
  geom_point(mapping = aes( x = Mujeres, y= Hombres)) + 
  labs(title = "alimentación según sexo", x="Mujeres", y="Hombres")

#Gráfico solo paro.
library(tidyverse)
ggplot(data = ParoxsexoEncolumnas) + 
  geom_point(mapping = aes( x = Mujeres, y= Hombres))+
  labs(title = "paro según sexo", x="Mujeres", y="Hombres")


#otro intento de gráfico con más cosas
library(tidyverse)
ggplot(data = union) + 
  geom_point(mapping = aes( x = Mujeres, y= Hombres)) + 
  labs(title="relación paro y alimentación", x="Mujeres", y= "Hombres" ) 



library(tidyverse)
ggplot(data = ParoxsexoEncolumnas) + 
  geom_point(mapping = aes( x = Hombres, y= ...1, color= Hombres)) +
  labs(title = "Paro en hombres por edades", x="Hombres", y="Edad")

library(tidyverse)
ggplot(data = ParoxsexoEncolumnas) + 
  geom_point(mapping = aes( x = Mujeres, y= ...1, color = Mujeres)) +
  labs(title = "Paro en mujeres por edades", x="Mujeres", y="Edad")


library(tidyverse)
ggplot(data = Comidaxsexoencolumnas) + 
  geom_point(mapping = aes( x = Hombres, y= ...1, color= Hombres)) +
  labs(title = "Alimentación en hombres", x="Hombres", y="Alimentos")

library(tidyverse)
ggplot(data = Comidaxsexoencolumnas) + 
  geom_point(mapping = aes( x = Hombres, y= ...1, color= Mujeres)) +
  labs(title = "Alimentación en mujeres", x="Mujeres", y="Alimentos")



library(tidyverse)
ggplot(data = union) + 
  geom_point(mapping = aes( x = Mujeres, y= ...1, color= Mujeres))

library(tidyverse)
ggplot(data = union) + 
  geom_point(mapping = aes( x = Hombres, y= ...1, color= Hombres))

library(DT)
datatable(head(Comidaxsexoencolumnas))

datatable(head(ParoxsexoEncolumnas))
datatable(head(union))

