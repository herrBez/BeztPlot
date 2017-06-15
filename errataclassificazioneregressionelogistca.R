l = function(data, modello, myy, soglia=0.5){
	n = nrow(data)
	prob.stimate = predict(modello, type='response')
	previsioni = rep(0, n)
	previsioni[prob.stimate > soglia] = 1
	ta = addmargins(table(previsioni, y = myy))
	return(ta)
}
