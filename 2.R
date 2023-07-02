
```{r}
ggtsdisplay(IPCA_ts, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw(),main = "IPCA")
```

```{r}
ggtsdisplay(Cred_ts, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw(),main = "Saldo da carteira de Crédito, R$ (em milhões)")
```

```{r}
ggtsdisplay(Ativ_ts, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw(), main = "Ação AAPL na B3, R$ (em milhões)")
```

```{r}
ggtsdisplay(IBOV_ts, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw(), main = "Ação AAPL na B3, R$ (em milhões)")
```