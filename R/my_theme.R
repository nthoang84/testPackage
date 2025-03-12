#' Custom ggplot2 Theme
#'
#' This function returns a custom ggplot2 theme with a dark aesthetic,
#' featuring dark backgrounds, bold white text, and a clean grid design.
#'
#' @return A ggplot2 theme object.
#' @export
#'
#' @examples
#' library(ggplot2)
#' p <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
#'   geom_point(color = "white") +
#'   ggtitle("Iris Sepal Dimensions") +
#'   my_theme()
#' p
my_theme <- function() {
  ggplot2::theme_dark() +
    ggplot2::theme(
      panel.background = ggplot2::element_rect(fill = "gray20", color = NA),
      plot.background = ggplot2::element_rect(fill = "gray10", color = "gray50", size = 1),
      panel.grid.major = ggplot2::element_line(color = "gray50", size = 0.7),
      panel.grid.minor = ggplot2::element_blank(),
      plot.title = ggplot2::element_text(face = "bold", size = 18, color = "white", hjust = 0.5),
      axis.title = ggplot2::element_text(face = "bold", size = 14, color = "white"),
      axis.text = ggplot2::element_text(color = "white"),
      legend.background = ggplot2::element_rect(fill = "gray20", color = NA),
      legend.text = ggplot2::element_text(color = "white"),
      legend.title = ggplot2::element_text(face = "bold", color = "white")
    )
}