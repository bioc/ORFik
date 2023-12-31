% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_collapse.R
\name{collapse.by.scores}
\alias{collapse.by.scores}
\title{Merge reads by sum of existing scores}
\usage{
collapse.by.scores(x)
}
\arguments{
\item{x}{a GRanges object}
}
\value{
merged GRanges object
}
\description{
If you have multiple reads a same location but different read lengths,
specified in meta column "size", it will sum up the scores
(number of replicates) for all reads at that position
}
\examples{
gr_s1 <- rep(GRanges("chr1", 1:10,"+"), 2)
gr_s2 <- GRanges("chr1", 1:12,"+")
gr2 <- GRanges("chr1", 21:40,"+")
gr <- c(gr_s1, gr_s2, gr2)
res <- convertToOneBasedRanges(gr,
   addScoreColumn = TRUE, addSizeColumn = TRUE)
ORFik:::collapse.by.scores(res)

}
\keyword{internal}
