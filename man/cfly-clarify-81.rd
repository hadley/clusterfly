\name{cfly_clarify}
\alias{cfly_clarify}
\title{Clarify clusters}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Match all cluster indices to common reference
}
\usage{cfly_clarify(cf, reference=1, method="rowmax")}
\arguments{
\item{cf}{clusterfly object}
\item{reference}{method to use, see \code{\link{clarify}}}
\item{method}{index to reference clustering}
}

\details{It's a good idea to run this before running any
animation sequences so that unnecessary colour
changes are minimised.}

\examples{o <- cfly_clarify(o, "Region")}
\keyword{manip}
