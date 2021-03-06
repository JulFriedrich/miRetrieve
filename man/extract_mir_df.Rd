% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_mir.R
\name{extract_mir_df}
\alias{extract_mir_df}
\title{Extract miRNA names from abstracts in data frame}
\usage{
extract_mir_df(
  df,
  threshold = 1,
  col.abstract = Abstract,
  extract_letters = FALSE
)
}
\arguments{
\item{df}{Data frame containing abstracts.}

\item{threshold}{Integer. Specifies how often a miRNA must be mentioned in an
abstract to be extracted.}

\item{col.abstract}{Symbol. Column containing abstracts.}

\item{extract_letters}{Boolean. If \code{extract_letters = FALSE}, only the miRNA stem
is extracted (e.g. \emph{miR-23}). If \code{extract_letters = TRUE}, the miRNA stem with
trailing letter (e.g. \emph{miR-23a}) is extracted.}
}
\value{
Data frame with miRNA names extracted from abstracts.
}
\description{
Extract miRNA names from abstracts in a data frame.
}
\details{
Extract miRNA names from abstracts in a data frame. miRNA names can
either be extracted with their stem only, e.g. \emph{miR-23}, or with their trailing
letter, e.g. \emph{miR-23a}. miRNA names are adapted to the most recent miRBase
version (e.g. miR-97, miR-102, miR-180(a/b) become miR-30a, miR-29a,
and miR-172(a/b), respectively). Additionally, how often a miRNA must be
mentioned in an
abstract to be extracted can be regulated via the \code{threshold} argument.
Ultimately, abstracts not containing any miRNA names
are silently dropped.
As many abstracts do not adhere to the miRNA nomenclature,
it is recommended to extract only the miRNA stem with
\code{extract_letters = FALSE}.
}
\seealso{
\code{\link[=extract_mir_string]{extract_mir_string()}}

Other extract functions: 
\code{\link{extract_mir_string}()},
\code{\link{extract_snp}()}
}
\concept{extract functions}
