# Display model based clustering with mvn ellipses
# Displays the results of model based clustering with an ellipse drawn from the multivariate normal model for each group.
# 
# @arguments output from me function
# @arguments input data frame to me
# @keyword cluster
# @keyword dynamic
#X if(require("mclust")) {
#X eei <- me(modelName = "EEI", data = iris[,-5], z = unmap(iris[,5]))
#X vvv <- me(modelName = "VVV", data = iris[,-5], z = unmap(iris[,5]))
#X vvi <- me(modelName = "VVI", data = iris[,-5], z = unmap(iris[,5]))
#X mefly(eei, iris[,-5])
#X mefly(vvi, iris[,-5])
#X mefly(vvv, iris[,-5])
#X }
mefly <- function(model, data) {
  mean <- model$parameters$mean
  var <- model$parameters$variance$sigma

  ellipses <- do.call("rbind", lapply(1:ncol(mean), function(i) { 
    data.frame(ellipse(mean = mean[,i], cov = var[,, i], df=10), cluster=i)
  }))
  colnames(ellipses) <- c(colnames(data), "cluster")
  ellipses$TYPE <- factor("ellipse")
  data$TYPE <- factor("data")

  all <- rbind.fill(ellipses, cbind(data, cluster=max.col(model$z)))

  g <- ggobi(all)
  glyph_type(g[1]) <- c(1,6)[all$TYPE]
  glyph_colour(g[1]) <- all$cluster
  invisible(g)
}