% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lda_miretrieve.R
\name{assign_topic_lda}
\alias{assign_topic_lda}
\title{Assign topics based on LDA model}
\usage{
assign_topic_lda(df, lda_model, topic.names, col.pmid = PMID)
}
\arguments{
\item{df}{Data frame to assign topics to. Should be the same data frame
that the LDA model was fitted on.}

\item{lda_model}{LDA-model.}

\item{topic.names}{Character vector. Vector containing names of the
new topics. Must have the same length as the number of topics \code{lda_model}
was fitted on.}

\item{col.pmid}{Symbol. Column containing PubMed-IDs.}
}
\value{
Data frame with topics assigned to each abstract based on an
LDAmodel.
}
\description{
Assign topics to abstracts based on an LDA model.
}
\details{
Assign topic to abstracts based on an LDA model.
To identify the subject of a topic, use \code{plot_lda_term()}.
}
\seealso{
\code{\link[=fit_lda]{fit_lda()}}, \code{\link[=plot_lda_term]{plot_lda_term()}}, \code{\link[=assign_topic]{assign_topic()}}

Other LDA functions: 
\code{\link{fit_lda}()},
\code{\link{plot_lda_term}()},
\code{\link{plot_perplexity}()}
}
\concept{LDA functions}
