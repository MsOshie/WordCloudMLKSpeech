\name{cleanText3}
\alias{cleanText3}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~Cleans text ~~
}
\description{
%%  ~~ This function cleans the text to be represented in the word cloud properly.~~
}
\usage{
tm_map(x,...)
}

\arguments{
  \item{x}{
%%     ~~the text file that has been put through corpus.
}
}
\details{
%%  ~~ punctuations, white spaces, and using the text's stem are ways in which the file can be cleaned.
}
\value{
%%  ~nothing
}

\examples{
 tm_map(speech1, removeNumbers)
{
  }
}
