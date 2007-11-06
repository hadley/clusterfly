\name{cfly_dist}
\alias{cfly_dist}
\title{Static plot: Variable distribution}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Draw a density plot for each continuous variable, facetted across clustering.
}
\usage{cfly_dist(cfly, index, scale="range")}
\arguments{
\item{cfly}{clusterfly object}
\item{index}{clustering to use}
\item{scale}{scaling to use}
}

\details{This allows you to quickly visualise how the cluster
vary in a univariate manner.  Currently, it is a bit
of a hack, because \code{\link[ggplot]{ggplot}} does
not support plots with different scales, so the variables
are manually rescaled prior to plotting.

This plot is inspired by Gaguin \url{http://www.rosuda.org/gaguin}}

\examples{cfly_dist(o, "kmeans")
cfly_dist(o, "kmeans") + scale_y_continuous(limit=c(0, 2))}
\keyword{hplot}
