\name{cfly_fluct}
\alias{cfly_fluct}
\title{Static plot: Fluctuation diagram}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Draw a fluctuation diagram comparing two clusterings
}
\usage{cfly_fluct(cfly, a, b, clarify=TRUE, ...)}
\arguments{
\item{cfly}{clusterfly object}
\item{a}{first clustering, will be reordered to match \code{b} if clarify=TRUE}
\item{b}{second clustering}
\item{clarify}{use \code{\link{clarify}} to rearranged cluster indices?}
\item{...}{}
}

\details{}

\examples{cfly_fluct(o, "kmeans","hierarchical", clarify=TRUE) }
\keyword{hplot}
