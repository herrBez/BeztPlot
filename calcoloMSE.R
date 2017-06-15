mse = function(modello) {
    modello.pred = predict(modello, dati.test)
    return(mean((dati.test$mag - modello.pred)^2))
}
