# Carregar biblioteca
library(ggplot2)

# Criar os dados
dados <- data.frame(
  categoria = c("Estadual", "Municipal", "Federal", "Prisional"),
  quantidade = c(2, 5, 0, 0)
)

# Gerar o gráfico de barras com rótulos
ggplot(dados, aes(x = categoria, y = quantidade, fill = categoria)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = quantidade), vjust = -0.5, size = 5) +
  labs(title = "Distribuição por Categoria", x = "Categoria", y = "Quantidade") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2") +
  theme(plot.title = element_text(hjust = 0.5))
# Carregar biblioteca
library(ggplot2)

# Criar os dados
dados <- data.frame(
  categoria = c("Estadual", "Municipal", "Federal", "Prisional"),
  quantidade = c(2, 5, 0, 0)
)

# Gerar o gráfico de barras com rótulos
ggplot(dados, aes(x = categoria, y = quantidade, fill = categoria)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = quantidade), vjust = -0.5, size = 5) +
  labs(title = "Distribuição por Categoria", x = "Categoria", y = "Quantidade") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2") +
  theme(plot.title = element_text(hjust = 0.5))
