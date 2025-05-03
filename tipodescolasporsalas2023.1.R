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
  scale_y_continuous(limits = c(0, 5))  # Ajusta o limite superior do eixo Y para 5
