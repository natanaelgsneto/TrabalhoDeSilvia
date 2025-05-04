install.packages("ggplot2")
library(ggplot2)

# Vetores de exemplo
nomes <- c("Municipal", "Federal", "Estadual", "Prisional")
quantidades <- c(5, 0, 2, 0)

# Data frame
df <- data.frame(fruta = nomes, quantidade = quantidades)

# Gráfico
ggplot(df, aes(x = fruta, y = quantidade)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  geom_text(aes(label = quantidade), vjust = -0.5, size = 4) +
  labs(
    title = "Soma de Discentes por Escolas do Periodo 2023.2",
    x = "Tipos de Escolas",
    y = "Frequência das Discentes"
  ) +
  scale_y_continuous(limits = c(0, 10)) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))
