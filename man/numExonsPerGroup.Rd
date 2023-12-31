% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grl_helpers.R
\name{numExonsPerGroup}
\alias{numExonsPerGroup}
\title{Get list of the number of exons per group}
\usage{
numExonsPerGroup(grl, keep.names = TRUE)
}
\arguments{
\item{grl}{a \code{\link{GRangesList}}}

\item{keep.names}{a logical, keep names or not, default: (TRUE)}
}
\value{
an integer vector of counts
}
\description{
Can also be used generaly to get number of GRanges object
 per GRangesList group
}
\examples{
gr_plus <- GRanges(seqnames = c("chr1", "chr1"),
                   ranges = IRanges(c(7, 14), width = 3),
                   strand = c("+", "+"))
gr_minus <- GRanges(seqnames = c("chr2", "chr2"),
                    ranges = IRanges(c(4, 1), c(9, 3)),
                    strand = c("-", "-"))
grl <- GRangesList(tx1 = gr_plus, tx2 = gr_minus)
numExonsPerGroup(grl)
}
