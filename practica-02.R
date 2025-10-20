#replicas : 4
# fertilizantes : 4

library(agricolae)

# -------------------------------------------------------------------------
# dbca --------------------------------------------------------------------
# -------------------------------------------------------------------------


fertilizante <-c("urea", "nitrato de amonio",
        "fosfato de amonio", "cloruro de potasio"
        )

ds <-agricolae::design.rcbd(trt = fertilizante, r=4)

str(ds)

fb <- ds$book
fb

fielbook <- zigzag(ds)
fielbook

print(ds$sketch)


# -------------------------------------------------------------------------
# dca ---------------------------------------------------------------------
# -------------------------------------------------------------------------
agricolae::design.crd(trt = fertilizante, r=4)









