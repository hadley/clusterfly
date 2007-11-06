# Xtable.table
# Fix lacking xtable table output
# 
# @keyword internal 
xtable.table <- function(x, ...) {
  class(x) <- "matrix"
  xtable.matrix(x, ...)
}
