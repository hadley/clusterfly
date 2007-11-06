\name{mefly}
\alias{mefly}
\title{Display model based clustering with mvn ellipses}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Displays the results of model based clustering with an ellipse drawn from the multivariate normal model for each group.
}
\usage{mefly(model, data)}
\arguments{
\item{model}{output from me function}
\item{data}{input data frame to me}
}

\details{}

\examples{if(require("mclust")) {
eei <- me(modelName = "EEI", data = iris[,-5], z = unmap(iris[,5]))
vvv <- me(modelName = "VVV", data = iris[,-5], z = unmap(iris[,5]))
vvi <- me(modelName = "VVI", data = iris[,-5], z = unmap(iris[,5]))
mefly(eei, iris[,-5])
mefly(vvi, iris[,-5])
mefly(vvv, iris[,-5])
}}
\keyword{cluster}
\keyword{dynamic}
