# Instale o ggplot2 caso ainda não tenha
# install.packages("ggplot2")

library(ggplot2)

# Criando os dados
dados <- data.frame(
  Periodo = rep(c("2023.1", "2023.2"), each = 4),
  Categoria = c("Estadual", "Municipal", "Federal", "Militar", 
                "Estadual", "Municipal", "Federal", "Prisional"),
  Frequencia = c(4, 3, 0, 1, 2, 5, 0, 0)
)

# Gráfico de barras agrupadas
ggplot(dados, aes(x = Categoria, y = Frequencia, fill = Periodo)) +
  geom_bar(stat = "identity", position = "dodge", color = "black") +
  labs(
    title = "Comparação de Frequência por Tipo de Escola entre os Períodos de 2023.1 e 2023.2",
    x = "Categoria de Escola",
    y = "Frequência"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    legend.title = element_text(face = "bold"),
    legend.text = element_text(face = "bold")
  )
