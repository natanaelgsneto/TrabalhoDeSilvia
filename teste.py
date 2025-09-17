import pandas as pd
import matplotlib.pyplot as plt

# Criar os dados originais
dados = pd.DataFrame({
    "Condicao": ["SURDEZ", "D.I.", "TEA", "DISLEXIA/TEA", "ALTAS HABIL.", "TDAH",
                 "D.I.", "TEA", "TEA/D.I.", "BAIXA VISÃO", "N.I."],
    "Periodo": ["2023.1"]*6 + ["2023.2"]*5,
    "Frequencia": [108, 46, 123, 16, 12, 20, 2, 105, 11, 48, 1]
})

# Garantir todas as categorias em ambos os períodos
todos = pd.MultiIndex.from_product(
    [dados["Condicao"].unique(), dados["Periodo"].unique()],
    names=["Condicao", "Periodo"]
).to_frame(index=False)

dados_completo = todos.merge(dados, on=["Condicao", "Periodo"], how="left").fillna(0)
dados_completo["Frequencia"] = dados_completo["Frequencia"].astype(int)

# Calcular porcentagens e labels
dados_completo["Porcentagem"] = dados_completo.groupby("Periodo")["Frequencia"].transform(
    lambda x: x / x.sum() * 100
)
dados_completo["label"] = dados_completo.apply(
    lambda row: f"{row['Porcentagem']:.1f}%" if row["Frequencia"] > 0 else "",
    axis=1
)

# Paleta de cores fixa
cores = {
    "SURDEZ": "#1f77b4",
    "D.I.": "#ff7f0e",
    "TEA": "#2ca02c",
    "DISLEXIA/TEA": "#d62728",
    "ALTAS HABIL.": "#9467bd",
    "TDAH": "#8c564b",
    "TEA/D.I.": "#e377c2",
    "BAIXA VISÃO": "#7f7f7f",
    "N.I.": "#bcbd22"
}

# Plotar gráficos de pizza
fig, axes = plt.subplots(1, 2, figsize=(12, 6))

for ax, periodo in zip(axes, ["2023.1", "2023.2"]):
    df = dados_completo[dados_completo["Periodo"] == periodo]
    ax.pie(
        df["Frequencia"],
        labels=df["label"],
        colors=[cores[c] for c in df["Condicao"]],
        startangle=90,
        counterclock=False
    )
    ax.set_title(periodo, fontweight="bold")

fig.suptitle("Distribuição de Características por Período", fontsize=14, fontweight="bold")
plt.legend(cores.keys(), loc="center left", bbox_to_anchor=(1, 0.5))
plt.tight_layout()

# Salvar em PNG e PDF
plt.savefig("grafico_caracteristicas.png", dpi=300, bbox_inches="tight")
plt.savefig("grafico_caracteristicas.pdf", dpi=300, bbox_inches="tight")
plt.show()
