# Carregar bibliotecas
library(ggplot2)
library(stringr)

# Criar os dados para os dois períodos
dados <- data.frame(
  categoria = rep(str_to_upper(c("Estadual", "Municipal", "Federal", "Militar")), times = 2),
  quantidade = c(40, 126, 147, 12, 30, 110, 152, 15),
  periodo = rep(c("2023.1", "2023.2"), each = 4)
)

# Gerar o gráfico de barras agrupadas
ggplot(dados, aes(x = categoria, y = quantidade, fill = periodo)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  geom_text(aes(label = quantidade), 
            vjust = -0.5, 
            position = position_dodge(width = 0.9), 
            size = 4) +
  labs(
    title = "Quantidade de Escolas por Sala de Recursos (2023.1 x 2023.2)",
    x = "Tipo de Escola",
    y = "Quantidade",
    fill = "Período"
  ) +
  theme_minimal() +
  scale_fill_brewer(palette = "Set1") +
  theme(plot.title = element_text(hjust = 0.5))
