\name{hierfly}
\alias{hierfly}
\title{Hierfly, a method for visualisation hierarchical clustering.}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
This method supplements a data set with information needed to draw a dendrogram
}
\usage{hierfly(data, metric="euclidean", method="average")}
\arguments{
\item{data}{data set}
\item{metric}{distance metric to use, see \code{\link{dist}} for list of possibilities}
\item{method}{cluster distance measure to use, see \code{\link{hclust}} for details}
}

\details{Intermediate cluster nodes are added as needed, and positioned at the
centroid of the combined clusters.}
\seealso{\code{\link{cut.hierfly}}, \code{\link{ggobi.hierfly}}}
\examples{h <- hierfly(iris)
ggobi(h)
h <- hierfly(iris, method="single")}
\keyword{cluster}
