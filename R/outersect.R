#' outersect
#'
#' @param x x
#' @param y y
#' @description
#' Opposite of intersect.
#' @examples
#' outersect(1:3, 3)
outersect <- function(x, y){
  sort(c(setdiff(x, y),
         setdiff(y, x)))
}
