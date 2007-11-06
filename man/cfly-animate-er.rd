\name{cfly_animate}
\alias{cfly_animate}
\title{Dynamic plot: Animate glyph colours}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Animate glyph colours according to provided cluster ids.
}
\usage{cfly_animate(cf, clusters = 1:length(cf$clusters), pause = 1, print=TRUE)}
\arguments{
\item{cf}{list of cluster ids that you want to animate across}
\item{clusters}{number of seconds to pause between each change}
\item{pause}{}
\item{print}{}
}

\details{This function will animiate endless until you manually break the loop
using Ctrl-Break or Ctrl-C.}

\examples{# Press Ctrl-Break or Ctrl-C to exit
\dontrun{cfly_animate(cfly_clarify(o))}}
\keyword{dynamic}
