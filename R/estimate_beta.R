#' Estimate Regression Coefficients using OLS
#'
#' This function computes the ordinary least squares (OLS) estimator for a linear regression model.
#'
#' @param y A numeric vector of response variable values (n observations).
#' @param X A numeric matrix of predictor variables (n x k).
#'
#' @return A numeric vector of estimated coefficients \eqn{\hat{\beta}}.
#' @export
#'
#' @examples
#' y <- iris[, "Sepal.Length"] |> as.matrix()
#' X <- iris[, c("Sepal.Width", "Petal.Length", "Petal.Width")] |> as.matrix()
#' estimate_beta(y, X)
estimate_beta <- function(y, X) {
  if (length(y) != nrow(X)) {
    stop("The length of y must equal the number of rows in X.")
  }
  beta_hat <- solve(t(X) %*% X, t(X) %*% y)
  return(beta_hat)
}