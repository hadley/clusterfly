# Add convex hulls
# Add conver hulls using the tool qconvex
# 
# To use this command you must have qconvex installed and available
# on your path.   I'm not sure if this will work on windows (probably not)
# but it's not a big loss, because the technique isn't very useful
# anyway.
# 
# @arguments ggobi dataset
# @arguments ggobi reference
# @arguments grouping variable
# @keyword hplot 
addhull <- function(gd, g, by) {
  mat <- as.data.frame(gd)
  rownames(mat) <- rownames(gd)
  by <- rep(by, length=nrow(gd))
  
  edges <- tapply(1:length(by), by, function(i) {
    qh <- qhull(as.data.frame(mat)[i,])
    if(is.null(qh)) return()
    cbind(qh, by[i[1]])
  })
  edges <- do.call(rbind, compact(edges))
    
  g['hulls'] <- data.frame(id=as.numeric(edges[,3]))
  setEdges(g['hulls'], edges[,1], edges[,2])
}

# qhull
# Generate convex hulls for a matrix
# 
# @keyword internal 
qhull <- function(mat) {
  if (nrow(mat) < 5) return()
  #if (is.null(rownames(mat))) rownames(mat) <- 1:nrow(mat)
  
  output <- system(paste("echo '", qhullout(mat), "' | qconvex QbB i"), TRUE)[-1]
  facets <- do.call(rbind, lapply(strsplit(output, " "), function(x) as.numeric(sort(x)))) + 1
  
  combs <- subset(expand.grid(i = 1:ncol(facets), j = 1:ncol(facets)), i < j)
  edges <- unique(do.call(rbind, 
    lapply(1:nrow(combs), function(x) facets[, unlist(combs[x,])])
  ))

  t(apply(edges, 1, function(x) rownames(mat)[x]))
  #edges
}

# qhullout
# Generate output data to calculate convex hulls
# 
# @keyword internal 
qhullout <- function(mat) {
  paste(
    ncol(mat), "\n",
    nrow(mat), "\n",
    paste(apply(mat, 1, paste, collapse=" "), collapse="\n"),
    sep=""
  )
  
}

