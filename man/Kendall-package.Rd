\name{Kendall-package}
\alias{Kendall-package}
\docType{package}
\title{
Kendall correlation and trend tests.
}
\description{
Compute Kendall's rank correlation and various trend tests.
}

\details{

\tabular{ll}{
Package: \tab Kendall\cr
Type: \tab Package\cr
Version: \tab 2.1\cr
Date: \tab 2009-01-27\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
}

If you just want to compute Kendall's tau or its signficance level,
the base function \code{cor} and \code{cor.test} are recommended.
The purpose of this package is to implement the Mann-Kendall test,
the seasonal Mann-Kendall trend test as well as computing the 
Kendall score.
}

\author{
A. I. McLeod

Maintainer: aimcleod@uwo.ca
}

\references{ 
Hipel, K.W. and McLeod, A.I., (2005).
Time Series Modelling of Water Resources and Environmental Systems.
Electronic reprint of our book orginally published in 1994.
\url{http://www.stats.uwo.ca/faculty/aim/1994Book/}.
}

\keyword{ts}

\keyword{package}

\seealso{
\code{\link{cor}}, 
\code{\link{cor.test}}, 
\code{\link{print.Kendall}}, 
\code{\link{summary.Kendall}},
\code{\link{MannKendall}},
\code{\link{SeasonalMannKendall}}
}

\examples{
library(boot)
data(PrecipGL)
MKtau<-function(z) MannKendall(z)$tau
tsboot(PrecipGL, MKtau, R=500, l=5, sim="fixed")
}
