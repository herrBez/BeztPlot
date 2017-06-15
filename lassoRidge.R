# calcola i modello per lasso e ridge con cross validaition!
# return modello con min e quello con 1se
lassoRidge = function (X, y, tipo, seed=2004) {
    par(mfrow=c(1,2))
    m.lr = glmnet(X, y, alpha=tipo)
    set.seed(seed)
    cv.lr = cv.glmnet(X, y, alpha=tipo)
    best.lambda.lr = cv.lr$lambda.min
    best.lambda.1se = cv.lr$lambda.1se
    modello.min = glmnet(X, y, alpha=tipo, lambda=best.lambda.lr)
    modello.1se = glmnet(X, y, alpha=tipo, lambda=best.lambda.1se)
	plot(m.lr, xvar='lambda', xlab = expression(log(y)))
    abline(v=log(best.lambda.lr), lty=2, col='red')
    abline(v=log(best.lambda.1se), lty=2, col='blue')
    plot(cv.lr)
    
    return (list ("min" = modello.min, "onese" = modello.1se))
}
