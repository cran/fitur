# fitur

Wrapper for computing parameters for univariate distributions using MLE. It creates an object that stores d, p, q, r functions as well as parameters and statistics for diagnostics. Currently supports automated fitting from base and actuar packages. A manually fitting distribution fitting function is included to support directly specifying parameters for any distribution from ancillary packages.

## Installation

You can install fitur from CRAN or github with:

```R
install.packages('fitur')
devtools::install_github("tomroh/fitur")
```

## Example

This is a basic example to fit a poisson distribution with estimated parameters and return the functions for it.

```R
set.seed(562)
x <- rpois(100, 1)
fittedPois <- fit_univariate(x, 'pois', 'discrete')
fittedPois$dpois(1)
fittedPois$ppois(1)
fittedPois$qpois(.5)
fittedPois$rpois(100)
fittedPois$parameters
```
