# Carregar biblioteca
library(ggplot2)

# Criar os dados
dados <- data.frame(
  Periodo = rep(c("2023.1", "2023.2"), times = c(2, 4)),
  Categoria = c("SIM", "NÃO INFORMADO", "SIM", "PARCIAL", "NÃO", "NÃO INFORMADO"),
  Frequencia = c(14, 1, 10, 2, 1, 2)
)

# Gráfico de barras agrupadas com rótulos
ggplot(dados, aes(x = Categoria, y = Frequencia, fill = Periodo)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  geom_text(
    aes(label = Frequencia),
    position = position_dodge(width = 0.9),
    vjust = -0.3,
    size = 3.5
  ) +
  labs(
    title = "Quantidade de escolas  por Censo Escolar",
    x = "Censo Escolar",
    y = "Frequência"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    legend.title = element_text(face = "bold"),
    legend.text = element_text(face = "bold")
  )
