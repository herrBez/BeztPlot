f = function(data, y, cn = 2) {
	a = names(data[ , sapply(data, is.factor), drop=FALSE])
	l = ceiling(length(a)/cn)
	print(paste(l, " ", cn))
	cn=min(cn, l)
	par(mfrow = c(l, cn))
	for ( i in a) {
		boxplot(data[ , y] ~ data[ , i], ylab=paste(y), xlab = paste(i), main = paste(y, ' vs ', i))
	}
}

f(data, 'budget')




g = function(dataset, cn = 2){
	for (k in names(dataset[ , sapply(dataset, is.numeric)])) {
		f(dataset, k, cn)
		readline(prompt="Press [enter] to continue")
	}
}

