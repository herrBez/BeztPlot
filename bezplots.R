# Given a dataset 'data' (with both qualitative and quantitative cols) and the
# the name of a quantitative column 'y' it creates a boxplot for each qualitative
# variable in the dataset. Additionally you can also set the number of columns
# to divide the window (default=2)
#
# Example: f(data, 'budget')
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

#This function calls f on each quantitative column.
g = function(data, cn = 2){
	for (k in names(data[ , sapply(data, is.numeric), drop=FALSE])) {
		f(data, k, cn)
		readline(prompt="Press [enter] to continue")
	}
}

