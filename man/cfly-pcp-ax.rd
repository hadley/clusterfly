\name{cfly_pcp}
\alias{cfly_pcp}
\title{Static plot: Parallel coordinates}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Draw a parallel coordinates plot, facetted across clustering.
}
\usage{cfly_pcp(cfly, index, ...)}
\arguments{
\item{cfly}{clusterfly object}
\item{index}{clustering to use}
\item{...}{other arguments passed to \code{\link[ggplot2]{geom_line}}}
}

\details{This really only a proof of concept, a truly useful PCP
needs interaction, especially to move the variables around.}

\examples{}
\keyword{hplot}
