#Se carga la base de datos y se visualiza el encabezado y las primeras filas
data("Orange")
head(Orange)

#Se mira la base de datos
View(Orange)
#Contiene 35 observaciones, una variable respuesta (circumference), una variable
#predictora que es continua (age) y un factor aleatorio (tree) con siete niveles.

#creamos nueva variable referente a los sitios donde se encuentran los distintos arboles medidos
sites<-c("malaga", "malaga","malaga", "malaga", "malaga", "malaga", "malaga",
         "sevilla", "sevilla", "sevilla", "sevilla","sevilla", "sevilla", "sevilla",
         "cordoba","cordoba", "cordoba","cordoba", "cordoba","cordoba", "cordoba",
         "jaen", "jaen", "jaen", "jaen", "jaen", "jaen", "jaen", 
         "almeria", "almeria", "almeria", "almeria", "almeria", "almeria","almeria")

#añadimos al dataframe 
Orange$sites<- sites

#creamos nueva variable sobre la precipitación anual (mm) de la zona donde se encuentra el arbol

prep<-c(400, 400, 400, 400, 400, 400, 400,
        250, 250, 250, 250, 250, 250, 250,
        280, 280, 280, 280, 280, 280, 280,
        530, 530, 530, 530, 530, 530, 530, 
        231, 231, 231, 231, 231, 231, 231)

#añadimos la nueva variable al dataframe
Orange$prep<- prep

#vemos nuestro nuevo dataframe
Orange
