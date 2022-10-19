# Exercício de Estatística Básica
setwd("C:/Users/ludmi/OneDrive/Documentos/PowerBI/Cap12")
getwd()

# Carregando o dataset
Notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Exercício 1:
View(Notas)
str(Notas)
summary(Notas$TurmaA)
summary(Notas$TurmaB)

# Exercício 2:
mean(Notas$TurmaA)
mean(Notas$TurmaB)

# Exercício 3:
sd(Notas$TurmaA)
sd(Notas$TurmaB)

# Exercício 4:
media_ta <- mean(Notas$TurmaA)
media_tb <- mean(Notas$TurmaB)

sd_ta <- sd(Notas$TurmaA)
sd_tb <- sd(Notas$TurmaB)

cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

print(cvA)
print(cvB)

# Exercício 5:
moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

resultado <- moda(Notas$TurmaA)
print(resultado)

resultado <- moda(Notas$TurmaB)
print(resultado)
