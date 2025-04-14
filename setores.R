library(ggplot2)

# Criar data frame
df <- data.frame(
  Escolas = c("ESTADUAL", "FEDERAL", "MILITAR", "MUNICIPAL"),
  quantidade = c(12, 45, 4, 39)
)
names(df)[names(df) == "Tiposdeescolas"] <- "Escolas"

# Calcular porcentagem
df$porcento <- round(df$quantidade / sum(df$quantidade) * 100)

# Gráfico de pizza com ggplot2
ggplot(df, aes(x = "", y = quantidade, fill = Escolas)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  geom_text(aes(label = paste0(porcento, "%")), 
            position = position_stack(vjust = 0.5), size = 4) +
  labs(title = "                       Distribuição das Discentes por escolas   ") +
  theme_void()
