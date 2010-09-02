\name{cfly_pcp}
\alias{cfly_pcp}
\title{Static plot: Parallel coordinates.}
\usage{cfly_pcp(cfly, index, ...)}

\description{
  Static plot: Parallel coordinates. Draw a parallel coordinates plot,
  facetted across clustering.
}

\details{
  This really only a proof of concept, a truly useful PCP needs
  interaction, especially to move the variables around.
}
\keyword{hplot}
\arguments{
  \item{cfly}{clusterfly object}
  \item{index}{clustering to use}
  \item{...}{other arguments passed to \code{\link[ggplot2]{geom_line}}}
}
\examples{o <- olive_example()
cfly_pcp(o, "kmeans") 
if (!interactive()) close(o)}
