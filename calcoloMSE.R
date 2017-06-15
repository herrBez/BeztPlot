mse = function(modello, test.set, y) {
    modello.pred = predict(modello, test.set)
    return(mean((y - modello.pred)^2))
}
