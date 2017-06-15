# grafico dei standard error dato un modello
rstandardplot = function(modello) {
  readline(prompt="Close all the graphs and press [enter] to continue")
  par(mfrow=c(1,2))
  plot(rstandard(modello))
  abline(h=0, col='red')
  hist(rstandard(modello), prob=T)
}
