#' @title Sample random matrices from Haar distribution
#'
#' @description This function samples random orthogonal matrices from the Haar distribution, i.e. the uniform distribution over the space of orthogonal matrices.
#'
#' @details This function is based on C++ code from the R package \pkg{bsvarSIGNs} by Xiaolei Wang and Tomasz Woźniak and is using objects and commands from the \pkg{armadillo} library by Sanderson & Curtin (2025) thanks to the \pkg{RcppArmadillo} package by Eddelbuettel, Francois, Bates, Ni, & Sanderson (2025)
#'
#' @param n a positive integer scalar specifying the dimension of the orthogonal matrix.
#'
#' @author Xiaolei Wang \email{adamwang15@gmail.com}
#'
#' @references
#'
#' Stewart, G. W. (1980). The efficient generation of random orthogonal matrices with an application to condition estimators. SIAM Journal on Numerical Analysis, 17(3), 403-409. <doi:10.1137/0717034>
#'
#' @examples
#' rhaar(3)
#'
#' @export
rhaar <- function(n) {
  stopifnot(
    "The argument n must be a positive integer scalar." =
      is.numeric(n) & n > 0 & length(n) == 1 & floor(n) == n
  )

  out <- .Call(`_StealLikeBayes_rhaar_cpp`, n)

  return(out)
}
