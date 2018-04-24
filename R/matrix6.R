#' Create a term-document matrix
#' @description place corpus text into a matrix
#' @return nothing
#' @export
dtm <- TermDocumentMatrix(speech1)
M <- as.matrix(dtm)
V <- sort(rowSums(M), decreasing = TRUE)
D <- data.frame(word = names(V), freq = V)

#' Frequency table
#' @description head() creates a freq. table will include top 10 words
#' @return first 10 words with the highest frequencies
#' @export
head(D, 10)
