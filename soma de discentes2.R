# Instalar e carregar o pacote ggplot2, se ainda não tiver
if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# Dados
nomes <- c("Municipal", "Militar", "Federal", "Estadual","Prisional")
quantidades <- c(8, 1, 4, 1,1)
df <- data.frame(fruta = nomes, quantidade = quantidades)

# Ordenar o data.frame do menor para o maior
df <- df[order(df$quantidade), ]
df$fruta <- factor(df$fruta, levels = df$fruta)  # Define ordem dos fatores

# Criar o gráfico
ggplot(df, aes(x = fruta, y = quantidade)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black", width = 0.6) +
  geom_text(aes(label = quantidade), vjust = -0.5, size = 5) +
  labs(
    title = "Soma de Discentes por Escolas",
    x = "Tipos de Escolas",
    y = "Frequência das Discentes"
  ) +
  scale_y_continuous(limits = c(0, 10), expand = c(0, 0)) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),
    axis.title.x = element_text(size = 13, face = "bold"),
    axis.title.y = element_text(size = 13, face = "bold")
  )
