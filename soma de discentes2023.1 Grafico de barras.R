# Criando o df com nomes corretos
df <- data.frame(
  escolas = c("Estadual", "Federal", "Municipal", "Militar"),
  quantidade = c(4, 0, 3, 1)
)

# Agora o gráfico vai funcionar
ggplot(df, aes(x = escolas, y = quantidade)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black", width = 0.6) +
  geom_text(aes(label = quantidade), vjust = -0.5, size = 5) +
  labs(
    title = "Soma de Discentes por Escolas Período 2023.1",
    x = "Tipos de Escolas",
    y = "Frequência das Discentes"
  ) +
  scale_y_continuous(limits = c(0, 6), expand = c(0, 0)) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),
    axis.title.x = element_text(size = 13, face = "bold"),
    axis.title.y = element_text(size = 13, face = "bold")
  )
