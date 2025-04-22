# Carregar o pacote
if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# Simulando um banco de dados
df <- data.frame(
  TiposDeEscolas = c("MUNICIPAL", "FEDERAL", "ESTADUAL","PRISIONAL"),
  SalasDeRecursos = c(8, 1,4,1)
)

# Gráfico de barras horizontal com uma cor e apenas os valores
ggplot(df, aes(y = SalasDeRecursos, x = TiposDeEscolas)) +
  geom_bar(stat = "identity", fill = "steelblue", color = "black") + 
  geom_text(aes(label = SalasDeRecursos), hjust = -0.2, size = 5) +  # Apenas os valores
  coord_flip() +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +  # Espaço para os textos
  labs(
    title = "Número de Salas de Recursos por Tipo de Escola",
    x = "Tipo de Escola",
    y = "Quantidade de Salas de Recursos"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),
    axis.title.x = element_text(size = 13),
    axis.title.y = element_text(size = 13)
  )
