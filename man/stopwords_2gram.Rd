% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stopwords_doc.R
\docType{data}
\name{stopwords_2gram}
\alias{stopwords_2gram}
\title{Stop words for text mining with common PubMed 2-grams}
\format{
Tibble.
\itemize{
\item \code{word}: Column containing stop words. Pulled from various PubMed
abstracts.
\item \code{lexicon}: Column specifying lexicon.
}
}
\source{
Manually created from various PubMed abstracts.
}
\usage{
stopwords_2gram
}
\description{
Data frame containing PubMed 2-gram stop words, manually curated from
PubMed abstracts
}
\keyword{datasets}
