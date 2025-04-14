# Simulando um banco de dados
df <- data.frame(TiposDeEscolas = c("MUNICIPAL", "MILITAR", "FEDERAL","ESTADUAL"),
                 SalasDeRecursos = c(6, 5, 3,5))

# Boxplot
ggplot(df, aes(y = SalasDeRecursos, x = TiposDeEscolas)) +
  geom_bar(stat = "identity")
ggplot(df, aes(y = SalasDeRecursos, x = TiposDeEscolas)) +
  geom_bar(stat = "identity")

#Gráfico de Barras Horizontal
ggplot(df, aes(y = SalasDeRecursos, x = TiposDeEscolas)) +
  geom_bar(stat = "identity") + 
  coord_flip()+labs(title = "Número de Salas de Recursos por Tipo de Escola") #Adicionando o título
