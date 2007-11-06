# Hierachical clustering
# Convenient methods for hierachical clustering
# 
# @arguments data frame
# @arguments method to use, see \code{\link{hclust}}
# @arguments distance metric to use, see \code{\link{dist}}
# @arguments number of clusters to retrieve, see \code{\link{cut}}
# @keyword cluster
hierarchical <- function(df, method="complete", metric="euclidean", n=5) {
  if (metric == 'correlation') {
    df <- scale(as.matrix(df))
    metric <- "euclidean"
  }
  as.vector(cutree(hclust(dist(df, metric), method=method), n))
}

# Clarify matrix
# Clarify matrix ordering to minimize off diagonals
# 
# @arguments cluster assignments to reassign 
# @arguments matrix b
# @value vector of reassigned cluster a
# @keyword manip 
# @seealso \code{\link[e1071]{matchClasses}}
clarify <- function(a, b, method="greedy") {
  m <- matchClasses(table(a,b), method=method, verbose=FALSE)
  as.vector(m[a])
}