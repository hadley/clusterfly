# Get clusters
# Extract clusters from clustering object
# 
# @arguments object
# @keyword internal
# @alias clusters.kmeans
# @alias clusters.default 
clusters <- function(x) UseMethod("clusters", x)
clusters.kmeans <- function(x) as.vector(x$cluster)
clusters.default <- function(x) as.vector(x)
clusters.partition <- function(x) x$clustering
