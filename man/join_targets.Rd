% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/join_targets.R
\name{join_targets}
\alias{join_targets}
\title{Add miRNA targets from an xlsx-file to a data frame}
\usage{
join_targets(
  df,
  excel_file,
  col.pmid.excel,
  col.target.excel,
  col.mir.excel = NULL,
  col.pmid.df = PMID,
  col.topic.df = NULL,
  filter_na = TRUE,
  stem_mir_excel = TRUE,
  reduce = FALSE
)
}
\arguments{
\item{df}{Data frame containing PubMed-IDs
that the miRNA targets shall be joined to.}

\item{excel_file}{xlsx-file. xlsx-file containing miRNA targets and
PubMed-IDs.}

\item{col.pmid.excel}{String. Column containing PubMed-IDs of the
\code{excel_file}.}

\item{col.target.excel}{String. Column containing targets of the
\code{excel_file}.}

\item{col.mir.excel}{String. Optional. Column containing miRNAs of the
\code{excel_file}. Needed if \code{reduce = TRUE}.}

\item{col.pmid.df}{Symbol. Column containing PubMed-IDs in \code{df}.}

\item{col.topic.df}{Symbol. Optional. Only important if \code{reduce = TRUE}.
If given, adds a topic column to the reduced data.frame.}

\item{filter_na}{Boolean. If \code{filter_na = TRUE}, drops all rows containing
\code{NA} in column \code{Target}.}

\item{stem_mir_excel}{Boolean. If \code{stem_mir_excel = TRUE}, miRNA names
provided in \code{col.mir.excel} are reduced to their stem, e.g. "miR-20a-5p" becomes
"miR-20".}

\item{reduce}{Boolean. If \code{reduce = FALSE}, adds a new column containing miRNA
targets to \code{df}.
If \code{reduce = TRUE}, adds two new
columns containing miRNA names and miRNA targets to \code{df}. All
other columns except for the PubMed-ID column and (optionally) the
topic column are dropped.}
}
\value{
Data frame containing miRNA targets.
}
\description{
Add miRNA targets from an external xlsx-file to a data frame.
}
\details{
Add miRNA targets from an external xlsx-file to a data frame. To add the targets to the
data frame, the xlsx-file and the data frame need to have one column in
common, such as PubMed-IDs.
\code{join_targets()} can return two different data frames, regulated by \code{reduce}:
\enumerate{
\item If \code{reduce = FALSE}, \code{join_targets()} adds targets from an
excel-file to the data frame in a new column. These targets then correspond
to the targets determined in the research paper, but do not necessarily correspond
to the miRNA names mentioned in the abstract.
\item If \code{reduce = TRUE}, \code{join_targets()} adds targets from an
xlsx-file to the data frame in a new column. However, an
altered data frame is returned, containing the PubMed-IDs, targets, and
miRNAs from the excel-file. For \code{reduce = TRUE} to work, the xlsx-file provided
must contain a column with miRNA names.
}
}
\seealso{
Other target functions: 
\code{\link{count_target}()},
\code{\link{join_mirtarbase}()},
\code{\link{plot_target_count}()},
\code{\link{plot_target_mir_scatter}()}
}
\concept{target functions}
