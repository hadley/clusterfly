\name{hierfly}
\alias{hierfly}
\title{Visualisig hierarchical clustering.}
\usage{hierfly(data, metric="euclidean", method="average")}

\description{
  Visualisig hierarchical clustering. This method supplements a data
  set with information needed to draw a dendrogram
}

\details{
  Intermediate cluster nodes are added as needed, and positioned at the
  centroid of the combined clusters.
}
\value{object of type, hierfly}
\seealso{\code{\link{cut.hierfly}}, \code{\link{ggobi.hierfly}}}
\keyword{cluster}
\arguments{
  \item{data}{data set}
  \item{metric}{distance metric to use, see \code{\link{dist}} for list of
possibilities}
  \item{method}{cluster distance measure to use, see \code{\link{hclust}} for
details}
}
\examples{h <- hierfly(iris)
ggobi(h)
h <- hierfly(iris, method="single")}
