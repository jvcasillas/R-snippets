#-----------------------------------------------
#Modselect.r2: Model selection by "R"²
#-----------------------------------------------

#For "lm", "lme", "mer" o "merMod"
#Compare model selection by AIC, BIC with anova()
#Single argument is a list of models to be compared, v.gr., mods=c(m.1,m.2,...,m.n)

modselect.r2=function(mods){				
	#fetch rsquared.glmm()

------------->		source("###RUTA A rsquared.glmm()###")	<-------------
	
	#calculate marginal "R"² and conditional "R"² for each model
		r2=apply(X=rsquared.glmm(mods)[,3:4],
			MARGIN=1,FUN=mean)
	#get highest mean "R"²
		r2.max=max(r2)
	#print model of highest mean "R"², the highest mean "R"² itself and both "R"² values constitutive thereof
		id.model=as.numeric(names(r2[which(r2==r2.max)]))
		return(c("Model of highest mean R²"=mods[id.model],
			"Mean R²"=r2.max,
			"Marginal R²"=rsquared.glmm(mods)[id.model,3],
			"Conditional R²"=rsquared.glmm(mods)[id.model,4]
			))
}

#see https://github.com/jslefche/rsquared.glmer for the rsquared.glmm() repository