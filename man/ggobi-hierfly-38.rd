\name{ggobi.hierfly}
\alias{ggobi.hierfly}
\title{Visualise hierarchical clustering with GGobi}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Displays both data, and dendrogram in original high-d space
}
\usage{ggobi.hierfly(data, ...)}
\arguments{
\item{data}{hierfly object to visualise in GGobi}
\item{...}{}
}

\details{This adds four new variables to the original data set:

\itemize{
\item ORDER, the order in which the clusters are joined
\item HEIGHT, the height of the branch, ie. the dissimilarity between the branches
\item LEVEL, the level of the branch
\item POINTS, the number of points in the branch
}

Make sure to select "attach edge set (edges)" in the in the edges menu on the
plot window, when you create a new plot.

A tour over the original variables will show how the clusters agglomerate
in space.   Plotting order vs height, level or points will give various
types of dendograms.  A correlation tour with height/level/points on the y
axis and the original variables on the x axis will show a mobile blowing
in the wind.}
\seealso{\code{\link{cut.hierfly}}}
\examples{h <- hierfly(iris)
ggobi(h)
h <- hierfly(iris, method="single")}
\keyword{cluster}
\keyword{dynamic}
