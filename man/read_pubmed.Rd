% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load_and_save_files.R
\name{read_pubmed}
\alias{read_pubmed}
\title{Convert PubMed-file from PubMed into a data frame}
\usage{
read_pubmed(pubmed_file, topic = NULL)
}
\arguments{
\item{pubmed_file}{PubMed-file as .txt, downloaded from PubMed.}

\item{topic}{String. Optional. If provided, adds a "Topic" column containing
\code{topic}.}
}
\value{
Data frame containing PubMed-IDs, abstracts, abstract titles,
publication years, languages, and article types.
}
\description{
Convert PubMed-file from PubMed into a data frame.
}
\details{
Convert an PubMed-file from PubMed into a data
frame.
The PubMed-file should contain PubMed-IDs, abstracts from research articles,
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
\code{\link[=read_pubmed_jats]{read_pubmed_jats()}}

Other external data functions: 
\code{\link{read_pubmed_jats}()},
\code{\link{save_excel}()},
\code{\link{save_plot}()}
}
\concept{external data functions}
