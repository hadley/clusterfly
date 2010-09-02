\name{ggobi.som}
\alias{ggobi.som}
\title{Visualise Kohonen self organising maps with GGobi...}
\usage{ggobi.som(data, ...)}

\description{
  Visualise Kohonen self organising maps with GGobi Displays both data,
  and map in original high-d space.
}

\details{
  Map variables added as map1 and map2.  Plot these to get traditional
  SOM plot.  Tour over all other variables to see how well the map fits
  the original data.
}
\keyword{cluster}
\keyword{dynamic}
\arguments{
  \item{data}{SOM object}
  \item{...}{ignored}
}
\examples{\dontrun{
d.music <- read.csv("http://www.ggobi.org/book/data/music-all.csv")

music <- rescaler(d.music)[complete.cases(d.music), 1:10]
music.som <- som::som(music[,-(1:3)], 6, 6, neigh="bubble", rlen=1000)
ggobi(music.som)
}
\dontrun{
d.music <- read.csv("http://www.ggobi.org/book/data/music-all.csv")

music <- rescaler(d.music)[complete.cases(d.music), 1:10]
music.hex <- kohonen::som(music[,-(1:3)], grid = somgrid(3, 3, "hexagonal"), rlen=1000) 
music.rect <- kohonen::som(music[,-(1:3)], grid = somgrid(6, 6, "rectangular"), rlen=1000) 
ggobi(music.rect)
}}
