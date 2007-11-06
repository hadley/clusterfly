\name{cut.hierfly}
\alias{cut.hierfly}
\title{Colour hierfly object}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Colour hierfly object into k clusters
}
\usage{cut.hierfly(x, k=2, g=ggobi(x), ...)}
\arguments{
\item{x}{hierfly object to colour}
\item{k}{number of clusters}
\item{g}{GGobi instance displaying x, will create new if not specified}
\item{...}{}
}

\details{}

\examples{h <- hierfly(iris)
hfly <- ggobi(h)
cut(h, 2, hfly)
h <- hierfly(iris, method="ward")
g <- ggobi(h)
cut(h, 2, g)}
\keyword{cluster}
