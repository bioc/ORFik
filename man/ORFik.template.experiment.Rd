% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experiment.R
\name{ORFik.template.experiment}
\alias{ORFik.template.experiment}
\title{An ORFik experiment to see how it looks}
\usage{
ORFik.template.experiment(as.temp = FALSE)
}
\arguments{
\item{as.temp}{logical, default FALSE, load as ORFik experiment.
If TRUE, loads as data.frame template of the experiment.}
}
\value{
an ORFik \code{\link{experiment}}
}
\description{
Toy-data created to resemble human genes:\cr
Number of genes: 6\cr
Ribo-seq: 2 libraries
RNA-seq: 2 libraries
CAGE: 1 library
PAS (poly-A): 1 library
}
\examples{
ORFik.template.experiment()
}
\seealso{
Other ORFik_experiment: 
\code{\link{ORFik.template.experiment.zf}()},
\code{\link{bamVarName}()},
\code{\link{create.experiment}()},
\code{\link{experiment-class}},
\code{\link{filepath}()},
\code{\link{libraryTypes}()},
\code{\link{organism,experiment-method}},
\code{\link{outputLibs}()},
\code{\link{read.experiment}()},
\code{\link{save.experiment}()},
\code{\link{validateExperiments}()}
}
\concept{ORFik_experiment}
