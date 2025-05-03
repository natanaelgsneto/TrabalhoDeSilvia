# Carregar bibliotecas
library(ggplot2)

# Dados de 2023.1
dados_2023_1 <- data.frame(
  condicao = c("Surdez", "D.I.", "TEA", "DISLEXIA/TEA", "ALTAS HABIL.", "TDAH"),
  quantidade = c(108, 46, 123, 16, 12, 20)
)

# Gráfico de barras horizontal com labels e novo título
ggplot(dados_2023_1, aes(x = reorder(condicao, quantidade), y = quantidade, fill = condicao)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = quantidade), hjust = -0.1, size = 4) +
  coord_flip() +
  labs(
    title = "CARACTERÍSTCAS DISCENTES NO PERÍODO 2013.2",
    x = "",
    y = "Quantidade"
  ) +
  theme_minimal() +
  scale_fill_brewer(palette = "Set3") +
  theme(
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"
  )
