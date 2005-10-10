\name{SeasonalMannKendall}
\alias{SeasonalMannKendall}
\title{ Mann-Kendall trend test for monthly environmental time series }
\description{

}
\usage{
SeasonalMannKendall(x)
}
\arguments{
  \item{x}{ a vector or a time series comprised of consecutive monthly values }
}

\details{
Hirst et al. (1982) suggested this test for monthly water quality time series.
The test is also discussed by Hipel and McLeod (2005).

The score is computed separately for each month.


}
\value{
A list with class Kendall.
  \item{tau}{ Kendall's tau statistic}
  \item{sl }{two-sided p-value}
  \item{S}{Kendall Score}
  \item{D }{Denominator, tau=S/D}
  \item{varS }{variance of S}
Generic function print.Kendall and summary.Kendall are provided.
}

\note{ If you want to use the output from SeasonalMannKendall,
save the result as in res<-SeasonalMannKendall(x,y) and then select from the list res the
value(s) needed. }

\references{ 
Hirsch, R.M., Slack, J.R. and Smith, R.A. (1982), 
Techniques for trend assessment for monthly water quality data, 
Water Resources Research 18, 107-121.

Hipel, K.W. and McLeod, A.I., (2005).
Time Series Modelling of Water Resources and Environmental Systems.
Electronic reprint of our book orginally published in 1994.
\url{http://www.stats.uwo.ca/faculty/aim/1994Book/}.
}

\author{A.I. McLeod, aimcleod@uwo.ca }

\seealso{ \code{\link{MannKendall}} }

\examples{
#test for monotonic trend in monthly average river height data
#for the Rio Negro at Manaus. This data is included in the 
#package boot.
library(boot) 
data(manaus)
SeasonalMannKendall(manaus)
  }
}

\keyword{ts}
\keyword{nonparametric }
