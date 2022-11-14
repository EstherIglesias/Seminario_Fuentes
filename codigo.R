#comentario :)


library("dplyr")
x <- c(1,2,3,4,5,6) 
y <- c(10,20,30) 
print(x + y) 


# Importación de datos xls.
library(readxl)
X48074 <- read_excel("INPUT/DATA/48074.xls")
48074
str(48074)
summary(48074)
View(48074)

library(readxl)
X49165 <- read_excel("INPUT/DATA/49165.xls")
49165
str(49165)
summary(49165)
View(49165)

library(readxl)
X49165_1_ <- read_excel("input/data/49165 (1).xls")
View(X49165_1_)

library(readxl)
X48075_2_ <- read_excel("input/data/48075 (2).xls")
View(X48075_2_)