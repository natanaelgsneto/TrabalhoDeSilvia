# Instale o ggplot2 se ainda não tiver
# install.packages("ggplot2")

library(ggplot2)

# Dados
dados <- data.frame(
  Categoria = c("estadual", "municipal", "federal", "militar"),
  Frequencia = c(4, 3, 0, 1)
)

# Gráfico com título centralizado
ggplot(dados, aes(x = Categoria, y = Frequencia)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = Frequencia), vjust = -0.5) +
  labs(
    title = "Frequência por Categoria",
    x = "Tipos de escolas por salas",
    y = "Frequência"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5)  # centraliza o título
  )
