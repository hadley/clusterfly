#' Extract clusters from clustering object.
#' 
#' @param x object
#' @export
#' @S3method clusters kmeans
#' @S3method clusters default
#' @S3method clusters partition
#' @keywords internal
clusters <- function(x) UseMethod("clusters", x)
clusters.kmeans <- function(x) as.vector(x$cluster)
clusters.default <- function(x) as.vector(x)
clusters.partition <- function(x) x$clustering
