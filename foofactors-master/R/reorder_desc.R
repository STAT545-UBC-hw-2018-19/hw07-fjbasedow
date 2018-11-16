#' Reorder levels of a factors in descending order
#'
#' Descending version of the `reorder` function. Reorders levels of a factor based on descending order of values of a second variable (usually numeric).
#'
#' @param x a factor (or character vector)
#' @param y a vector of the same length as x, based on which levels of x will be ordered.
#' If y is a character vector, it will be sorted in reverse alphabetic order and x ordered accordingly.
#' @param FUN a function to be applied to each subset of y, determined by the levels of x. Default is mean.
#' @param ... extra arguments supplied to FUN, optional
#'
#' @return A factor with the order of the levels determined by FUN applied to y grouped by x. The levels are ordered such that the values returned by FUN are in descreasing order.
#'
#' @examples
#' x <- c("a", "d", "h", "g", "m")
#' y <- c(1, 3, 9, 7, 6)
#' reorder_desc(x, y)
#'
#' reorder_desc(iris$Species, iris$Sepal.Width, median)
#'
#' @export

reorder_desc <- function(x, y, FUN = mean, ...){
  reversed <- reorder(x, dplyr::desc(y), FUN = FUN)
  return(reversed)
}
