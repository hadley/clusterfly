\name{cfly_fluct}
\alias{cfly_fluct}
\title{Static plot: Fluctuation diagram.}
\usage{cfly_fluct(cfly, a, b, clarify=TRUE, ...)}

\description{
  Static plot: Fluctuation diagram. Draw a fluctuation diagram
  comparing two clusterings.
}
\keyword{hplot}
\arguments{
  \item{cfly}{clusterfly object}
  \item{a}{first clustering, will be reordered to match \code{b} if clarify=TRUE}
  \item{b}{second clustering}
  \item{clarify}{use \code{\link{clarify}} to rearranged cluster indices?}
  \item{...}{other arguments passed on to ggfluctuation}
}
\examples{o <- olive_example()
cfly_fluct(o, "kmeans","Region", clarify=TRUE) 
if (!interactive()) close(o)}
