% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distinct_shared_mir.R
\name{get_distinct_mir_df}
\alias{get_distinct_mir_df}
\title{Identify top miRNA names distinct for one topic compared to another topic}
\usage{
get_distinct_mir_df(
  df,
  distinct,
  top = 5,
  topic = NULL,
  col.topic = Topic,
  col.mir = miRNA,
  col.pmid = PMID
)
}
\arguments{
\item{df}{Data frame containing at least two topics and miRNA names.}

\item{distinct}{String. Name of topic top distinct miRNAs shall be identified
for. \code{distinct} must be contained in the topic names provided in \code{topic}.}

\item{top}{Integer. Number of top miRNA names to extract for both topics.}

\item{topic}{String. Vector of strings containing topic names to compare
miRNA names for. If \code{topic = NULL}, \code{topic} defaults to all topic names contained
in \code{col.topic} in \code{df}. \code{topic} must only contain two topic names.}

\item{col.topic}{Symbol. Column containing topic names.}

\item{col.mir}{Symbol. Column containing miRNA names.}

\item{col.pmid}{Symbol. Column containing PubMed-IDs.}
}
\value{
Character vector containing miRNA names distinct for \code{distinct}
compared to the second topic provided in \code{topic}.
}
\description{
Identify top miRNA names distinct for one topic compared to another topic in a
data frame.
}
\details{
Get top distinct miRNA names of one topic compared to another topic in a
data frame.
\code{get_distinct_mir_df()} compares the top miRNA names of two topics and
returns the miRNA names that are exclusive for \code{distinct}.
}
\seealso{
Other get functions: 
\code{\link{get_distinct_mir_vec}()},
\code{\link{get_mir}()},
\code{\link{get_pmid}()},
\code{\link{get_shared_mir_df}()},
\code{\link{get_shared_mir_vec}()},
\code{\link{get_snp}()}
}
\concept{get functions}
