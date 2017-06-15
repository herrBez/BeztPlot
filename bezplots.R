#Crea un boxplot per ogni qualitativa data una variabile quantitativa y in input
#Esempio f(data, 'budget'): importante usare gli apici!!!
f = function(data, y, cn = 2) {
	a = names(data[ , sapply(data, is.factor), drop=FALSE])
	l = ceiling(length(a)/cn)
	if(l == 1){
		cn = 1
	}
	par(mfrow = c(l, cn))
	for ( i in a) {
		boxplot(data[ , y] ~ data[ , i], ylab=paste(y), xlab = paste(i), main = paste(y, ' vs ', i))
	}
}

#Chiama f su tutte le variabili quantitative
g = function(data, cn = 2){
	for (k in names(data[ , sapply(dataset, is.numeric), drop=FALSE])) {
		f(data, k, cn)
		readline(prompt="Press [enter] to continue")
	}
}

