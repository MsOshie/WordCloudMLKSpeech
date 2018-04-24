#' Create word cloud
#'
#' @return nothing
#' @export
set.seed(1234)

#' Word cloud with white text, black background
#' @param include various specifications for the word cloud, including size and color
#' @return a white word cloud
#' @export
wordcloud2::wordcloud2(D, size = 0.5, color = "white", backgroundColor = "black")

