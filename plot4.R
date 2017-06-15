# plot del modello diviso su 4 schermi
plot4 = function(modello) {
  readline(prompt="Close all the graphs and press [enter] to continue")
  par(mfrow=c(2,2))
  plot(modello)
}
