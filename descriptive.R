#windows 
install.packages("reshape")
library(reshape)

setwd("f:/lineal")

getwd()

file <- file.path("data", "diabetes.csv")

diabetes  <- read.csv(file=file, header=TRUE, sep=",")

nrow(diabetes)
ncol(diabetes)
head(diabetes)
unique(diabetes$TIEMPO_DM)

masculinos = length(which(diabetes$SEXO == "M"))
femeninos = length(which(diabetes$SEXO == "F"))

slices <- c(masculinos, femeninos)
lbls <- c( paste("Hombre", "\n" , masculinos, sep=""), paste("Mujer", "\n" , femeninos, sep=""))
pie(slices, labels = lbls, col = c("#7FDBFF", "#B10DC9"))


casados = length(which(diabetes$ESTADO_CIVIL == "CASADO"))
solteros = length(which(diabetes$ESTADO_CIVIL == "SOLTERO"))
viudos = length(which(diabetes$ESTADO_CIVIL == "VIUDO"))


slices <- c(casados, solteros, viudos)
lbls <- c(
    paste("Casados", "\n" , casados, sep=""), 
    paste("Solteros", "\n" , solteros, sep=""), 
    paste("Viudos", "\n" , viudos, sep="")
    )
pie(slices, labels = lbls, col =  c("#AAAAAA", "#01FF70", "#3D9970"))


insulina = length(which(diabetes$TRATAMIENTO == "INSULINA"))
metformina = length(which(diabetes$TRATAMIENTO == "METFORMINA"))
ninguna = length(which(diabetes$TRATAMIENTO == "NINGUNO"))

slices <- c(insulina, metformina, ninguna)
lbls <- c(
  paste("Insulina", "\n" , insulina, sep=""),
  paste("Metformina", "\n" , metformina, sep=""),
  paste("Ninguna", "\n" , ninguna, sep=""))
pie(slices, labels = lbls, col =  c("#7FDBFF", "#01FF70", "#3D9970"))



isquemico = length(which(diabetes$PIE_DIABETICO == "ISQUEMICO"))
neuropatico = length(which(diabetes$PIE_DIABETICO == "NEUROPATICO"))

slices <- c(isquemico, neuropatico)
lbls <- c(
  paste("Isquemico", "\n" , isquemico, sep=""),
  paste("Neuropatico", "\n" , neuropatico, sep=""))
pie(slices, labels = lbls, col =  c("#7FDBFF", "#01FF70"))



hist(diabetes$EDAD, col="#01FF70", main="", xlab="Edad en años", ylab="Frecuencia")

hist(diabetes$TIEMPO_DM, col="#39CCCC", main="", xlab="Años diagnostico", ylab="Frecuencia")

hist(diabetes$PESO, col="#39CCCC", main="", xlab="Peso en kilogramos", ylab="Frecuencia")

