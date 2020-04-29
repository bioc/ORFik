% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experiment.R
\name{filepath}
\alias{filepath}
\title{Get filepaths to ORFik experiment}
\usage{
filepath(df, type, basename = FALSE)
}
\arguments{
\item{df}{an ORFik \code{\link{experiment}}}

\item{type}{a character(default: "defualt"), load files in experiment
or some precomputed variant, either "bedo" or "pshifted".
These are made with ORFik:::simpleLibs()}

\item{basename}{logical, default (FALSE).
Get relative paths instead of full. Only use for inspection!}
}
\value{
a character vector of paths, or a list of character with 2 paths per,
if paired libraries exists
}
\description{
Get filepaths to ORFik experiment
}
\examples{
# df <- read.experiment("ORFik_exp")
# filepath(df, "default")
# filepath(df, "bedo")
}
\seealso{
Other ORFik_experiment: 
\code{\link{bamVarName}()},
\code{\link{create.experiment}()},
\code{\link{experiment-class}},
\code{\link{libraryTypes}()},
\code{\link{outputLibs}()},
\code{\link{read.experiment}()},
\code{\link{save.experiment}()},
\code{\link{validateExperiments}()}
}
\concept{ORFik_experiment}