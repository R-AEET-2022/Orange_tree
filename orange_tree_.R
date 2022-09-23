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

#gráfico de nuestros datos

#hacemos lm para ver si la edad (en días)podría explicar la circunferencia del árbol
m3<-lm(circumference~age, data=Orange)
summary(m3)

#Se hace el plot para ver la relación entre la edad y la circunferencia

library(visreg)

visreg(m3)

#Como hay varias medidas por árbol, existe cierta autocorrelación que debería de ser controlada
#con un modelo mixto metiendo árbol en aleatorio. Sin embargo, solo hay un árbol por sitio, por lo
#que carecemos de réplicas.