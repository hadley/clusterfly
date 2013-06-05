\name{cfly_pcp}
\alias{cfly_pcp}
\title{Static plot: Parallel coordinates.
Draw a parallel coordinates plot, facetted across clustering.}
\usage{
  cfly_pcp(cfly, index, ...)
}
\arguments{
  \item{cfly}{clusterfly object}

  \item{index}{clustering to use}

  \item{...}{other arguments passed to
  \code{\link[ggplot2]{geom_line}}}
}
\description{
  This really only a proof of concept, a truly useful PCP
  needs interaction, especially to move the variables
  around.
}
\examples{
o <- olive_example()
cfly_pcp(o, "kmeans")
if (!interactive()) close(o)
}
\keyword{hplot}

