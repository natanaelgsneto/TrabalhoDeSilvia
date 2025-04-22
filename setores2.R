library(ggplot2)

# Criar data frame
df <- data.frame(
  Escolas = c("ESTADUAL", "FEDERAL", "MUNICIPAL", "PRISIONAL"),
  quantidade = c(4, 1, 8, 1)
)

# Calcular porcentagem
df$porcento <- round(df$quantidade / sum(df$quantidade) * 100)

# Gráfico de pizza com ggplot2
ggplot(df, aes(x = "", y = quantidade, fill = Escolas)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  geom_text(aes(label = paste0(porcento, "%")), 
            position = position_stack(vjust = 0.5), size = 4) +
  labs(title = "Distribuição das Discentes por Escolas",
       fill = "Escolas") +  # Define o título da legenda
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    legend.title = element_text(face = "bold"),    # Título da legenda em negrito
    legend.text = element_text(face = "plain")     # Texto da legenda normal
  )
