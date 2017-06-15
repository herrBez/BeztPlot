# Crea i boxplot di interazione per tutte le variabili qualitative (da usare nel caso di y qualitativa e x quantitativa)
# esempio: boxplotQualitative(film, 2, 'budget', 'box01')
boxplotQualitative = function(data, cn, x, y) {
    a = names(data[ , sapply(data, is.factor), drop=FALSE]);
    l = ceiling(length(a)/cn);
    if(l == 1){
        cn = 1
    }
    par(mfrow = c(l - 1, cn))
    for (i in a) {
        if (i != y) {
            boxplot(data[ , x] ~ data[ , i] * data[, y], ylab=paste(y), xlab = paste(i), main = paste('Interazione ' , x, ' e ', i))
        }
    }
}
