# Estatística Básica

# Parte 4 - Tabela de Frequência

# Definindo a pasta de trabalho
setwd("C:\Users\ludmi\OneDrive\Documentos\PowerBI\Cap12")
getwd()

# Carregando os dados
?read.table
dados <- read.table("Usuarios.csv", 
                    dec = ".", 
                    sep = ",", 
                    h = T, 
                    fileEncoding = "windows-1252")

# Visualizando e sumarizando os dados
View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)
mean(dados$grau_instrucao)

# Tabela de Frequências Absolutas
freqa <- table(dados$grau_instrucao) 
View(freqa)

# Tabela de Frequências Relativas
freq_rel <- prop.table(freq) 
View(freq_rel)

# Porcentagem (100 * freq_rel_table)
p_freq_rel <- 100 * prop.table(freq_rel) 
View(p_freq_rel)

# Adiciona linhas de total
View(freqa)
freqa <- c(freqa, sum(freqa)) 
View(freqa)
names(freqa)[4] <- "Total"
View(freqa)

# Tabela final como todos os valores

# Calculamos frequência relativa e frequência proporcional
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))

# Tabela final com todos os vetores
tabela_final <- cbind(freq, 
                      freq_rel = round(freq_rel, digits = 2), 
                      p_freq_rel = round(p_freq_rel, digits = 2))
View(tabela_final)

