library(tm)
#' tm_map used to remove common words and make text lowercase

#' Clean text
#'
#' Convert the text to lower case
#' @description redduce all words to lowercase so all words all formatted the same way
#' @return nothing
#' @export
speech1 <- tm_map(speech1, content_transformer(tolower))

#' remove numbers
#' @description remove any unwanted numbers
#' @return nothing
#' @export
speech1 <- tm_map(speech1, removeNumbers)

#' Remove common English stopwords
#' @description remove any unnecessary stopwords
#' @return nothing
#' @export
speech1 <- tm_map(speech1, removeWords, stopwords("english"))

#' Remove other words
#' @description remove any unnecessary
#' @return nothing
#' @export
speech1 <- tm_map(speech1, removeWords, c("that", "than", "we", "for", "but", "with", "before", "after", "over", "this", "have", "will", "about", "because", "still", "over", "they", "would", "when"))

#' Remove punctuation
#' @description remove punctuation so they do not appear in the word cloud
#' @return nothing
#' @export
speech1 <- tm_map(speech1, removePunctuation)

#' Remove extra whitespace
#' @return nothing
#' @export
speech1 <- tm_map(speech1, stripWhitespace)

#' Text stemming, make words into root form
#' @example instead of roots, rooted, or rooting, the word will appear as root
#' @return nothing
#' @export
speech1 <- tm_map(speech1, stemDocument)

