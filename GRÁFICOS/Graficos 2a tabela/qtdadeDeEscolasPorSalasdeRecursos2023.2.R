# Carregar bibliotecas
library(ggplot2)
library(stringr)

# Criar os dados
dados <- data.frame(
  categoria = str_to_upper(c("Estadual", "Municipal", "Federal", "Militar")),
  quantidade = c(2, 5, 0, 0)
)

# Gerar o gráfico
ggplot(dados, aes(x = categoria, y = quantidade)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = quantidade), vjust = -0.5, size = 5, fontface = "bold") +
  labs(
    title = "QUANTIDADE DE ESCOLAS POR SALA DE RECURSOS NO PERÍODO 2023.2",
    x = "TIPO DE ESCOLA",
    y = "QUANTIDADE"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    axis.title.x = element_text(face = "bold"),
    axis.title.y = element_text(face = "bold"),
    axis.text = element_text(face = "bold"),
    legend.position = "none"
  )
