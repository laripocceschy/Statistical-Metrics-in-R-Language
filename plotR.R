setwd("C:/Users/ludmi/OneDrive/Documentos/PowerBI/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Carrega o ddplot2
library(ggplot2)

# Cria o gráfico
?qplot
qplot(Valor, Custo, data = vendas)