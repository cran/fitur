## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
library(fitur)

## ---- discrete-----------------------------------------------------------
set.seed(562)
x <- rpois(100, 1)
fittedPois <- fit_univariate(x, 'pois', 'discrete')
fittedPois$dpois(1)
fittedPois$ppois(1)
fittedPois$qpois(.5)
fittedPois$rpois(100)
fittedPois$parameters

## ---- continuous---------------------------------------------------------
set.seed(562)
x <- rexp(100, 1)
fittedExp <- fit_univariate(x, 'exp')
fittedExp$dexp(1)
fittedExp$pexp(1)
fittedExp$qexp(.5)
fittedExp$rexp(100)
fittedPois$parameters

## ---- empirical----------------------------------------------------------
set.seed(562)
x <- rpois(100, 1)
fittedDEmp <- fit_univariate(x, family = 'empirical', type = 'discrete')
fittedDEmp$dempDis(1)
fittedDEmp$pempDis(1)
fittedDEmp$qempDis(.5)
fittedDEmp$rempDis(100)
fittedPois$parameters

set.seed(562)
x <- rexp(100, 1)
fittedCEmp <- fit_univariate(x, family = 'empirical', type = 'continuous')
fittedCEmp$dempCont(1)
fittedCEmp$pempCont(1)
fittedCEmp$qempCont(.5)
fittedCEmp$rempCont(100)
fittedPois$parameters

