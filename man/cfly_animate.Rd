\name{cfly_animate}
\alias{cfly_animate}
\title{Dynamic plot: Animate glyph colours...}
\usage{cfly_animate(cf, clusters=seq_along(cf$clusters), pause=1, print=TRUE,
    max_iterations=100)}

\description{
  Dynamic plot: Animate glyph colours
}

\details{
  This function will animate until you manually break the loop using
  Ctrl-Break or Ctrl-C.
}
\keyword{dynamic}
\arguments{
  \item{cf}{list of cluster ids that you want to animate across}
  \item{clusters}{clusters to display}
  \item{pause}{clusters number of seconds to pause between each change}
  \item{print}{print current cluster to screen?}
  \item{max_iterations}{maximum number of interations}
}
\examples{# Press Ctrl-Break or Ctrl-C to exit
o <- olive_example() 
cfly_animate(cfly_clarify(o), max = 5)
if (!interactive()) close(o)}
