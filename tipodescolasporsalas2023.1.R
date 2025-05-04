# Instalar e carregar o pacote ggplot2 (se necessário)
# install.packages("ggplot2")
library(ggplot2)

# Criar os dados
dados <- data.frame(
  Categoria = c("Estadual", "Municipal", "Federal", "Militar"),
  Frequencia = c(40, 126, 147, 12)
)

# Criar o gráfico de barras
ggplot(dados, aes(x = Categoria, y = Frequencia)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = Frequencia), vjust = -0.5) +
  labs(
    title = "Frequência de Escolas Estaduais, Municipais, Federais e Militares em 2023.1",
    x = "Tipos de escolas por salas de recursos",
    y = "Frequência"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5)
  ) +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1)))
