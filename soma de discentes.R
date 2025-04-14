install.packages("ggplot2")
library(ggplot2)

# Vetores de exemplo
nomes <- c("Municipal", "Militar", "Federal", "Estadual")
quantidades <- c(126, 47, 147, 40)

# Data frame
df <- data.frame(fruta = nomes, quantidade = quantidades)

# Gráfico com eixo Y fixo até 127
ggplot(df, aes(x = fruta, y = quantidade)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  geom_text(aes(label = quantidade), vjust = -0.5, size = 4) +
  labs(title = "                                                                                                         Soma de Discentes               ", x = "Escolas", y = " Frequência das Discentes") +
  scale_y_continuous(limits = c(0, 150)) +
  theme_minimal()

