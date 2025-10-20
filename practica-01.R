# conceptos basicos de R

# O =|
# Y = &
# No = !
# asignar alt + -

x <- "Hola"
y <- "UNTRM"

# R es un lenguaje que trabaja con funciones 

# f(x,y) = 2x + x*2

paste(x,y)

#ayuda:F1| Fn + F1 | ?f()

paste(x,y)

#objetos <- "casa"

a <- "casa"
b1 <- "silla"
b2 <- "cama"
a_3 <- ""

# Ejemplo

notas <- c(12, 15, 13, 17)
notas
md <- mean(notas)
nf <- md + 2
nf

#pipe

library(tidyverse)


# cntrl + shif + m => %>%

nf <- c(12, 15, 13, 17) %>% 
  mean() + 2
  
nf









