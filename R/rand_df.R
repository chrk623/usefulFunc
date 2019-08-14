#' rand_df
#'
#' @param f Function used to gnerate random numbers.
#' @param nc Number of columns in the data frame.
#' @param nr Number of rows in the data frame.
#' @param cn Colnames to be used.
#' @param ... Additional arguments to pass to f.
#' @description
#' Create a dataframe with random numbers.
#' @examples
#' rand_df()
rand_df = function(f = rnorm, nc = 3, nr = 10, cn = letters[1:nc], ...) {
  out = as.data.frame(matrix(f(nc * nr, ...), ncol = 3, nrow = 10))
  colnames(out) = cn
  return(out)
}
