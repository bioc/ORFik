% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experiment_naming.R
\name{cellTypeNames}
\alias{cellTypeNames}
\title{Get cell type name variants}
\usage{
cellTypeNames()
}
\value{
a data.table with 2 columns, the main name, and all name variants
of the main name in second column as a list.
}
\description{
Used to standardize nomeclature for experiments.\cr
Example: 1 is main naming, but a variant is rep1
rep1 will then be renamed to 1
}
\seealso{
Other experiment_naming: 
\code{\link{batchNames}()},
\code{\link{cellLineNames}()},
\code{\link{conditionNames}()},
\code{\link{fractionNames}()},
\code{\link{inhibitorNames}()},
\code{\link{libNames}()},
\code{\link{mainNames}()},
\code{\link{repNames}()},
\code{\link{stageNames}()},
\code{\link{tissueNames}()}
}
\concept{experiment_naming}
\keyword{internal}
