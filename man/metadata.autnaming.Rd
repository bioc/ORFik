% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SRA_metadata.R
\name{metadata.autnaming}
\alias{metadata.autnaming}
\title{Guess SRA metadata columns}
\usage{
metadata.autnaming(file)
}
\arguments{
\item{file}{a data.table of SRA metadata}
}
\value{
a data.table of SRA metadata with additional columns:
      LIBRARYTYPE, REPLICATE, STAGE, CONDITION, INHIBITOR
}
\description{
Guess SRA metadata columns
}
