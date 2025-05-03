install.packages("dplyr")
library(ggplot2)
library(dplyr)

# Criar os dados
dados <- data.frame(
  Condicao = c("SURDEZ", "D.I.", "TEA", "DISLEXIA/TEA", "ALTAS HABIL.", "TDAH",
               "D.I.", "TEA", "TEA/D.I.", "BAIXA VISÃO", "N.I."),
  Periodo = c(rep("2023.1", 6), rep("2023.2", 5)),
  Frequencia = c(108, 46, 123, 16, 12, 20, 2, 105, 11, 48, 1)
)

# Calcular porcentagens
dados <- dados %>%
  group_by(Periodo) %>%
  mutate(
    Porcentagem = Frequencia / sum(Frequencia) * 100,
    label = paste0(round(Porcentagem, 1), "%")
  )

# Gráfico de pizza com porcentagens
ggplot(dados, aes(x = "", y = Frequencia, fill = Condicao)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y") +
  facet_wrap(~ Periodo) +
  geom_text(aes(label = label), 
            position = position_stack(vjust = 0.5), size = 3) +
  labs(title = "Distribuição de Características por Período") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    strip.text = element_text(face = "bold"),
    legend.title = element_blank()
  )
