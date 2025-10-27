
# Pagina web Leer quarto.org --------------------------------------------------------------


# -------------------------------------------------------------------------
# importación de datos  ---------------------------------------------------

# excel  ------------------------------------------------------------------

library(readxl)
fb <- read_excel("LA MOLINA 2014 POTATO WUE (FB).xlsx", 
                 sheet = "fb")
View(fb)

str(fb)

# Google sheets -----------------------------------------------------------

library(googlesheets4)

url <-("https://docs.google.com/spreadsheets/d/15r7ZwcZZHbEgltlF6gSFvCTFA-CFzVBWwg3mFlRyKPs/edit?gid=172957346#gid=172957346")
gs <- url %>% as_sheets_id()

fb <- gs %>% range_read("fb")

#>tubdw = u + R + G + R*G + B + e

modelo <- aov(tubdw ~ riego + geno +  riego*geno + bloque, data = datos)
anova(modelo)


# Convertir a factor  -----------------------------------------------------

datos <- gs() %>%
  range_read(sheet = "fb") %>%
  mutate(
    across(c(riego, geno, block, bloque), as.factor)
  )

str(datos)
