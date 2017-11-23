# ToothGrowth data analysis
# We alsopractice code externalization

## @knitr load
# Data load code
library(datasets)
data(ToothGrowth)

str(ToothGrowth)
head(ToothGrowth, 5)


## @knitr summary
# Summary code
summary(ToothGrowth)


## @knitr ex_anal
# exploratory data analysis code
coplot(len ~ dose | supp, data = ToothGrowth, panel = panel.smooth,
       xlab = c("ToothGrowth data: length vs dose by supplement", "Supplement (mg/d)")
       , ylab = expression(paste("Tooth Length ( ", mu, "m)", sep="")))


## @knitr comparison1
# Compare supplements
t.test(len ~ supp, data = ToothGrowth)


## @knitr comparison2
# 2 vs .5
t.test(ToothGrowth$len[ToothGrowth$dose == 2],  ToothGrowth$len[ToothGrowth$dose == 0.5])
# 2 vs 1
t.test(ToothGrowth$len[ToothGrowth$dose == 2], ToothGrowth$len[ToothGrowth$dose == 1])
# 1 vs dose .5
t.test(ToothGrowth$len[ToothGrowth$dose == 1], ToothGrowth$len[ToothGrowth$dose == 0.5])
