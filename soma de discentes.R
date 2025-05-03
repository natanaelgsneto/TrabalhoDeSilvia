install.packages("ggplot2")
library(ggplot2)

# Vetores de exemplo
nomes <- c("Municipal", "Militar", "Federal", "Estadual")
quantidades <- c(8, 1, 4, 1)

# Data frame
df <- data.frame(fruta = nomes, quantidade = quantidades)
library(ggplot2)

ggplot(df, aes(x = fruta, y = quantidade)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  geom_text(aes(label = quantidade), vjust = -0.5, size = 4) +
  labs(
title = "Soma de Discentes por Escolas Período 2023.1",
    x = "Tipos de Escolas",
    y = "Frequência das Discentes"
  ) +
  scale_y_continuous(limits = c(0, 10)) +
  theme_minimal()