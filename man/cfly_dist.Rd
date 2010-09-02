\name{cfly_dist}
\alias{cfly_dist}
\title{Static plot: Variable distribution.}
\usage{cfly_dist(cfly, index, scale="range")}

\description{
  Static plot: Variable distribution. Draw a density plot for each
  continuous variable, facetted across clustering.
}

\details{
  This allows you to quickly visualise how the cluster vary in a
  univariate manner.  Currently, it is a bit of a hack, because
  \code{\link[ggplot2]{ggplot}} does not support plots with different
  scales, so the variables are manually rescaled prior to plotting.

  This plot is inspired by Gaguin \url{http://www.rosuda.org/gaguin}.
}
\keyword{hplot}
\arguments{
  \item{cfly}{clusterfly object}
  \item{index}{clustering to use}
  \item{scale}{scaling to use}
}
\examples{o <- olive_example()
cfly_dist(o, "kmeans")
cfly_dist(o, "kmeans") + scale_y_continuous(limit=c(0, 2))
if (!interactive()) close(o)}
