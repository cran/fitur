% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diagnostics.R
\name{plot_density}
\alias{plot_density}
\title{Density Comparison Plot}
\usage{
plot_density(x, fits, nbins)
}
\arguments{
\item{x}{numeric vector of sample data}

\item{fits}{a list object produced from fit_univariate, fit_empirical, or
fit_univariate_man}

\item{nbins}{number of bins for histogram}
}
\value{
ggplot of empirical histogram of x compared to theoretical density
distributions
}
\description{
Density Comparison Plot
}
\examples{
library(ggplot2)
set.seed(37)
x <- rgamma(10000, 5)
dists <- c('gamma', 'lnorm', 'weibull')
fits <- lapply(dists, fit_univariate, x = x)
plot_density(x, fits, 30) +
theme_bw()
}
