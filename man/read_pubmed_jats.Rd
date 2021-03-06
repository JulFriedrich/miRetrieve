% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load_and_save_files.R
\name{read_pubmed_jats}
\alias{read_pubmed_jats}
\title{Convert JATS-file from PubMed into a data frame}
\usage{
read_pubmed_jats(jats_file, topic = NULL)
}
\arguments{
\item{jats_file}{JATS-file, downloaded from PubMed.}

\item{topic}{String. Optional. If provided, adds a "Topic" column containing
\code{topic}.}
}
\value{
Data frame containing PubMed-IDs, abstracts, abstract titles,
publication years, languages, and article types.
}
\description{
Convert JATS-file from PubMed into a data frame.
}
\details{
Converts an JATS-file from PubMed into a data
frame.
The JATS-file should contain PubMed-IDs, abstracts from research articles,
abstract title, publication year, abstract language, and article type.
The data frame created holds at least six columns, namely
\itemize{
\item \code{PMID}, containing the PubMed-ID,
\item \code{Year}, containing the publication year,
\item \code{Title}, containing the title of the abstracts,
\item \code{Abstract}, containing the actual abstract,
\item \code{Language}, containing the language(s) of the paper,
\item \code{Type}, containing the article type.
}

If \code{topic} is provided, a "Topic" column is added, assigning all abstracts in
\code{df} to \code{topic}.

\code{read_pubmed()} is faster than \code{read_pubmed_jats()} and thus
recommended.
}
\seealso{
\code{\link[=read_pubmed]{read_pubmed()}}

Other external data functions: 
\code{\link{read_pubmed}()},
\code{\link{save_excel}()},
\code{\link{save_plot}()}
}
\concept{external data functions}
