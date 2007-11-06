# Static plot: Parallel coordinates
# Draw a parallel coordinates plot, facetted across clustering.
# 
# This really only a proof of concept, a truly useful PCP
# needs interaction, especially to move the variables around.
# 
# @arguments clusterfly object
# @arguments clustering to use
# @arguments other arguments passed to \code{\link[ggplot2]{geom_line}}
# @keyword hplot
# cfly_pcp(o, "kmeans") 
cfly_pcp <- function(cfly, index, ...) {
  df <- cbind(cfly$df, .cluster=cfly$clusters[[index]])
  ggpcp(df, vars=setdiff(names(df), ".cluster")) + geom_line(...) + facet_grid(. ~ .cluster)
}

# Static plot: Variable distribution
# Draw a density plot for each continuous variable, facetted across clustering.
# 
# This allows you to quickly visualise how the cluster
# vary in a univariate manner.  Currently, it is a bit
# of a hack, because \code{\link[ggplot]{ggplot}} does
# not support plots with different scales, so the variables
# are manually rescaled prior to plotting.
# 
# This plot is inspired by Gaguin \url{http://www.rosuda.org/gaguin}
# 
# @arguments clusterfly object
# @arguments clustering to use
# @arguments scaling to use
# @keyword hplot
#X cfly_dist(o, "kmeans")
#X cfly_dist(o, "kmeans") + scale_y_continuous(limit=c(0, 2))
cfly_dist <- function(cfly, index, scale="range") {
  df <- cbind(cfly$df, .cluster=factor(cfly$clusters[[index]]))
  dfm <- melt(rescaler(df, scale), id=".cluster")
  
  ggplot(dfm, aes(x=value)) + geom_density() + facet_grid(.cluster ~ variable)
}

# Static plot: Fluctuation diagram
# Draw a fluctuation diagram comparing two clusterings
# 
# @arguments clusterfly object
# @arguments first clustering, will be reordered to match \code{b} if clarify=TRUE
# @arguments second clustering
# @arguments use \code{\link{clarify}} to rearranged cluster indices?
# @keyword hplot
#X cfly_fluct(o, "kmeans","hierarchical", clarify=TRUE) 
cfly_fluct <- function(cfly, a, b, clarify=TRUE, ...) {
  ca <- cfly$clusters[[a]]
  cb <- cfly$clusters[[b]]
  
  if (clarify) ca <- clarify(ca, cb)
  
  p <- ggfluctuation(table(ca,cb), ...)
  p$aspect.ratio <- 1
  p + scale_y_discrete(a) + scale_x_discrete(b)
}