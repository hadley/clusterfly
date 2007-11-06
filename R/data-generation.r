spiral3d <- function(n = 500, cycles = 2) {
  require("mlbench", quiet=TRUE)
  spiral <- mlbench.1spiral(n, cycles, sd=.1)
  depth <- rnorm(n)
  
  rescaler(cbind(spiral, depth), type="range")
}

randproj <- function(p, d) {
  require("far", quiet=TRUE)
  rand <- matrix(rnorm(p * d), ncol=d)
  orthonormalization(rand, basis=FALSE, norm=TRUE)
}