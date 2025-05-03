# Dados
tipos <- c("Estadual", "Municipal", "Federal", "Militar")
valores <- c(40, 126, 147, 12)

# Criar gráfico
plot(valores, type = "o", col = "blue", xaxt = "n",
     main = "Número de Discentes por Tipo de Escola no perído 2023.1",
     xlab = "Tipo de Escola", ylab = "Quantidade", pch = 16,
     ylim = c(0, max(valores) + 1))

# Adicionar rótulos no eixo X
axis(1, at = 10:10, labels = tipos)

# Adicionar grade
grid()
