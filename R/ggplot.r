#' Static plot: Parallel coordinates.
#' Draw a parallel coordinates plot, facetted across clustering.
#' 
#' This really only a proof of concept, a truly useful PCP
#' needs interaction, especially to move the variables around.
#' 
#' @param cfly clusterfly object
#' @param index clustering to use
#' @param ... other arguments passed to \code{\link[ggplot2]{geom_line}}
#' @export
#' @keywords hplot
#' @examples
#' o <- olive_example()
#' cfly_pcp(o, "kmeans") 
#' if (!interactive()) close(o)
cfly_pcp <- function(cfly, index, ...) {
  df <- cbind(cfly$df, .cluster=cfly$clusters[[index]])
  ggpcp(df, vars = setdiff(names(df), ".cluster")) + 
    geom_line(...) + 
    facet_grid(. ~ .cluster)
}

#' Static plot: Variable distribution.
#' Draw a density plot for each continuous variable, facetted across clustering.
#' 
#' This allows you to quickly visualise how the cluster
#' vary in a univariate manner.  Currently, it is a bit
#' of a hack, because \code{\link[ggplot2]{ggplot}} does
#' not support plots with different scales, so the variables
#' are manually rescaled prior to plotting.
#' 
#' This plot is inspired by Gaguin \url{http://www.rosuda.org/gaguin}.
#' 
#' @param cfly clusterfly object
#' @param index clustering to use
#' @param scale scaling to use
#' @keywords hplot
#' @export
#' @examples
#' o <- olive_example()
#' cfly_dist(o, "kmeans")
#' cfly_dist(o, "kmeans") + scale_y_continuous(limit=c(0, 2))
#' if (!interactive()) close(o)
cfly_dist <- function(cfly, index, scale="range") {
  df <- cbind(cfly$df, .cluster=factor(cfly$clusters[[index]]))
  dfm <- melt(rescaler(df, scale), id=".cluster")
  
  ggplot(dfm, aes(x=value)) + geom_density() + facet_grid(.cluster ~ variable)
}

#' Static plot: Fluctuation diagram.
#' Draw a fluctuation diagram comparing two clusterings.
#' 
#' @param cfly clusterfly object
#' @param a first clustering, will be reordered to match \code{b} if clarify=TRUE
#' @param b second clustering
#' @param clarify use \code{\link{clarify}} to rearranged cluster indices?
#' @param ... other arguments passed on to ggfluctuation
#' @keywords hplot
#' @export
#' @examples
#' o <- olive_example()
#' cfly_fluct(o, "kmeans","Region", clarify=TRUE) 
#' if (!interactive()) close(o)
cfly_fluct <- function(cfly, a, b, clarify=TRUE, ...) {
  ca <- cfly$clusters[[a]]
  cb <- cfly$clusters[[b]]
  
  if (clarify) ca <- clarify(ca, cb)
  
  p <- ggfluctuation(table(ca,cb), ...)
  p$aspect.ratio <- 1
  p + scale_y_discrete(a) + scale_x_discrete(b)
}