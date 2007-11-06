\name{ggobi.som}
\alias{ggobi.som}
\title{Visualise Kohonen self organising maps with GGobi}
\author{Hadley Wickham <h.wickham@gmail.com>}

\description{
Displays both data, and map in original high-d space.
}
\usage{ggobi.som(data, ...)}
\arguments{
\item{data}{SOM object}
\item{...}{}
}

\details{Map variables added as map1 and map2.  Plot these to
get traditional SOM plot.  Tour over all other variables to
see how well the map fits the original data.}

\examples{\dontrun{
d.music <- read.csv("http://www.ggobi.org/book/data/music-all.csv")

music <- rescaler(d.music)[complete.cases(d.music), 1:10]
music.som <- som(music[,-(1:3)], 6, 6, neigh="bubble", rlen=1000)
ggobi(music.som)
}}
\keyword{cluster}
\keyword{dynamic}
