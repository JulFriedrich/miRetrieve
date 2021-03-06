% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lda_miretrieve.R
\name{plot_lda_term}
\alias{plot_lda_term}
\title{Plot terms associated with LDA-fitted topics}
\usage{
plot_lda_term(lda_model, top.terms = 10, title = NULL)
}
\arguments{
\item{lda_model}{LDA-model.}

\item{top.terms}{Integer. Top terms to plot per topic.}

\item{title}{String. Plot title.}
}
\value{
Bar plot with top terms per topic.
}
\description{
Plot terms associated with LDA-fitted topics.
}
\details{
Plot terms associated with LDA-fitted topics. For each topic in the LDA-model,
the top terms are plotted. Plotting \code{top.terms} for each topic can help
identifying its subject.
}
\seealso{
Other LDA functions: 
\code{\link{assign_topic_lda}()},
\code{\link{fit_lda}()},
\code{\link{plot_perplexity}()}
}
\concept{LDA functions}
