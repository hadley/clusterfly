#' Hierachical clustering
#' Convenient methods for hierachical clustering
#' 
#' @param df data frame
#' @param method method to use, see \code{\link{hclust}}
#' @param metric distance metric to use, see \code{\link{dist}}
#' @param n number of clusters to retrieve, see \code{\link{cut}}
#' @keywords cluster
hierarchical <- function(df, method="complete", metric="euclidean", n=5) {
  if (metric == 'correlation') {
    df <- scale(as.matrix(df))
    metric <- "euclidean"
  }
  as.vector(cutree(hclust(dist(df, metric), method=method), n))
}

#' Clarify matrix
#' Clarify matrix ordering to minimize off diagonals
#' 
#' @param a cluster assignments to reassign 
#' @param b matrix b
#' @param method clarification method
#' @return vector of reassigned cluster a
#' @keywords manip 
#' @seealso \code{\link[e1071]{matchClasses}}
#' @importFrom e1071 matchClasses
clarify <- function(a, b, method="greedy") {
  m <- matchClasses(table(a,b), method=method, verbose=FALSE)
  as.vector(m[a])
}