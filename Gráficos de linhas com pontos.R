# Dados
tipos <- c("Estadual", "Municipal", "Federal", "Militar")
valores <- c(4, 3, 0, 1)

# Criar gráfico
plot(valores, type = "o", col = "blue", xaxt = "n",
     main = "Número de Discentes por Tipo de Escola no perído 2023.1",
     xlab = "Tipo de Escola", ylab = "Quantidade", pch = 16,
     ylim = c(0, max(valores) + 1))

# Adicionar rótulos no eixo X
axis(1, at = 1:4, labels = tipos)

# Adicionar grade
grid()
