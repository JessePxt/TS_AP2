library('ggplot2')
library('forecast')

dCredito <- Saldo$`28183 - Saldo de crédito R$ (milhões)`
dIBOV <-Ibovespa$`Adj Close`/1000000
dIPCA <-IPCA$`433 (IPCA)`
dAAPL <-AAPL$`Adj Close`/1000000

IPCA.Lambda <- BoxCox.lambda(IPCA.ts)

IPCA.ts.ajus <- BoxCox(IPCA.ts, lambda = IPCA.Lambda)

ggtsdisplay(IBOV_ts/1000000, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw(), main = "Ibovespa, R$ (em milhões)")
ggtsdisplay(IPCA_ts, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw(),main = "IPCA")
ggtsdisplay(Cred_ts/1000000, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw(),main = "Saldo da carteira de Crédito, R$ (em milhões)")
ggtsdisplay(Ativ_ts/1000000, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw(), main = "Ação AAPL na B3, R$ (em milhões)")


IBOV.diff <- diff(IBOV.ts, IBOV.ndiff)
IPCA.diff <- diff(IPCA.ts, IPCA.ndiff)
Cred.diff <- diff(Cred.ts, Cred.ndiff)
Ativ.diff <- diff(Ativ.ts.ajsu, Ativ.ndiff)

ggtsdisplay(IBOV.diff, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw())
ggtsdisplay(IPCA.ts, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw())
ggtsdisplay(Cred.diff, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw())

Ativ.lambda <- BoxCox.lambda(Ativ.ts)
Ativ.ts.ajsu <- BoxCox(Ativ.ts, Ativ.lambda)
ggtsdisplay(Ativ.diff, plot.type=c("partial", "histogram", "scatter", "spectrum"), theme=theme_bw())
