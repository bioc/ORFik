% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grl_helpers.R
\name{reverseMinusStrandPerGroup}
\alias{reverseMinusStrandPerGroup}
\title{Reverse minus strand}
\usage{
reverseMinusStrandPerGroup(grl, onlyIfIncreasing = TRUE)
}
\arguments{
\item{grl}{a \code{\link{GRangesList}}}

\item{onlyIfIncreasing}{logical, default (TRUE), only reverse if decreasing}
}
\value{
a \code{\link{GRangesList}}
}
\description{
Reverse minus strand per group in a GRangesList
Only reverse if minus strand is in increasing order
}
\keyword{internal}
