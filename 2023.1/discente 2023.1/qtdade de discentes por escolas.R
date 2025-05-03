# Carregar bibliotecas
library(ggplot2)
library(stringr)

# Criar os dados
dados <- data.frame(
  categoria = str_to_upper(c("Estadual", "Municipal", "Federal", "Militar")),
  quantidade = c(40, 126, 147, 12)
)

# Gerar o gráfico com o novo título e sem legenda
ggplot(dados, aes(x = categoria, y = quantidade, fill = categoria)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = quantidade), vjust = -0.5, size = 5) +
  labs(
    title = "Quantidade de Escolas por Sala de Recursos",
    x = "Tipo de Escola",
    y = "Quantidade"
  ) +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2") +
  theme(
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"
  )
