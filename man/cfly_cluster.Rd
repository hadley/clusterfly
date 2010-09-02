\name{cfly_cluster}
\alias{cfly_cluster}
\title{Add clustering.}
\usage{cfly_cluster(cf, method, ..., name=deparse(substitute(method)))}

\description{
  Add clustering.
}

\details{
  Clustering method needs to respond to \code{\link{clusters}}, if the
  default does not work, you will need to write your own to extract
  clusters.
}
\keyword{manip}
\arguments{
  \item{cf}{clusterfly object}
  \item{method}{clusterfing method (function)}
  \item{...}{arguments passed to clustering method}
  \item{name}{name of clustering}
}
\examples{o <- olive_example() 
cfly_cluster(o, kmeans, 4)
cfly_cluster(o, kmeans, 4, name="blah")}
