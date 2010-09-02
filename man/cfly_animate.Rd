\name{cfly_animate}
\alias{cfly_animate}
\title{Dynamic plot: Animate glyph colours...}
\usage{cfly_animate(cf, clusters=seq_along(cf$clusters), pause=1, print=TRUE)}

\description{
  Dynamic plot: Animate glyph colours
}

\details{
  This function will animiate endless until you manually break the loop
  using Ctrl-Break or Ctrl-C.
}
\keyword{dynamic}
\arguments{
  \item{cf}{list of cluster ids that you want to animate across}
  \item{clusters}{clusters to display}
  \item{pause}{clusters number of seconds to pause between each change}
  \item{print}{print current cluster to screen?}
}
\examples{# Press Ctrl-Break or Ctrl-C to exit
\dontrun{cfly_animate(cfly_clarify(o))}}
