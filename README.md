R-snippets
==========

This package includes a selection of R snippets for Sublimetext that I find useful when using R through SublimeREPL

Check out the project page at www.jvcasillas.com/R-snippets

Just type the trigger and hit the tab key. For example...
```
lm
```
Expands to...
```
# load lme4 for mixed models
library(lme4)

# random intercept and random slope model
modelName = lmer(DV ~ fixedFactor1 +* fixedFactor2 + (1 + randomSlope|randomInt), data=df)
modelName

hist(residuals(modelName))
qqnorm(residuals(modelName))
qqline(residuals(modelName))
```

Main triggers:
- "plot": templates for plotting in base R
- "edit": options useful for data cleansing and saving
- "desc": descriptive statistics of data
- "ttest": distinct types of t-test
- "aov": distinct analysis of variance models
- "lm": linear and logistic regression
- "lmem": linear mixed effects models

Extras:
- "subset": make subsets of a DF
- "read": read/load/install data/packages into R
- "save": save plots, dfs, tables, etc.
- "tikz": template for creating R plots in LaTeX
