#' replace special characters from text
#'
#' @description remove any special characters you do not want to appear in the word cloud
#' @example special characters like +, %, #, ), /, or <
#' @return nothing
#' @export
toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
speech1 <- tm_map(speech1, toSpace, "/")
speech1 <- tm_map(speech1, toSpace, "@")
speech1 <- tm_map(speech1, toSpace, "\\|")
