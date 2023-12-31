% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{getGRanges}
\alias{getGRanges}
\title{Internal GRanges loader from fst data.frame}
\usage{
getGRanges(df, seqinfo = NULL)
}
\arguments{
\item{df}{a data.frame with columns minimum 4 columns:
seqnames, start, strand\cr
Additional specific columns are:\cr
- width (if not set, width is set to 1 for all reads)\cr
Additional columns will be assigned as meta columns}

\item{seqinfo}{Seqinfo object, defaul NULL (created from ranges).
Add to avoid warnings later on differences in seqinfo.}
}
\value{
GRanges object
}
\description{
Internal GRanges loader from fst data.frame
}
\keyword{internal}
