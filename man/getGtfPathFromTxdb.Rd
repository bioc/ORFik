% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/txdbHelpers.R
\name{getGtfPathFromTxdb}
\alias{getGtfPathFromTxdb}
\title{Get path of GTF that created txdb}
\usage{
getGtfPathFromTxdb(txdb, stop.error = TRUE)
}
\arguments{
\item{txdb}{a loaded TxDb object}

\item{stop.error}{logical TRUE, stop if Txdb does not have a gtf.
If FALSE, return NULL.}
}
\value{
a character file path, returns NULL if not valid
and stop.error is FALSE.
}
\description{
Will crash and report proper error if no gtf is found
}
\keyword{internal}
