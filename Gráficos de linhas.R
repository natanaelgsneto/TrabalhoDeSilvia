# Dados
meses <- c("Jan", "Fev", "Mar", "Abr", "Mai", "Jun",
           "Jul", "Ago", "Set", "Out", "Nov", "Dez")
temperaturas <- c(30, 29, 27, 25, 22, 20, 19, 21, 24, 26, 28, 29)

# Criar o gráfico
plot(temperaturas, type = "o", col = "blue", xaxt = "n",
     main = "Temperatura Média Mensal em uma Cidade",
     xlab = "Mês", ylab = "Temperatura (°C)", pch = 16)

# Adicionar os nomes dos meses no eixo X
axis(1, at = 1:12, labels = meses)

# Adicionar grade (opcional)
grid()
