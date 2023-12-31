% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experiment_class.R
\name{organism,experiment-method}
\alias{organism,experiment-method}
\title{Get ORFik experiment organism}
\usage{
\S4method{organism}{experiment}(object)
}
\arguments{
\item{object}{an ORFik \code{\link{experiment}}}
}
\value{
character, name of organism
}
\description{
If not defined directly, checks the txdb / gtf organism information, if existing.
}
\examples{
# if you have set organism in txdb of ORFik experiment:
df <- ORFik.template.experiment()
organism(df)

#' If you have not set the organism you can do:
#txdb <- GenomicFeatures::makeTxDbFromGFF("pat/to/gff_or_gff")
#BiocGenerics::organism(txdb) <- "Homo sapiens"
#saveDb(txdb, paste0("pat/to/gff_or_gff", ".db"))
# then use this txdb in you ORFik experiment and load:
# create.experiment(exper = "new_experiment",
#   txdb = paste0("pat/to/gff_or_gff", ".db")) ...
# organism(read.experiment("new-experiment))
}
\seealso{
Other ORFik_experiment: 
\code{\link{ORFik.template.experiment.zf}()},
\code{\link{ORFik.template.experiment}()},
\code{\link{bamVarName}()},
\code{\link{create.experiment}()},
\code{\link{experiment-class}},
\code{\link{filepath}()},
\code{\link{libraryTypes}()},
\code{\link{outputLibs}()},
\code{\link{read.experiment}()},
\code{\link{save.experiment}()},
\code{\link{validateExperiments}()}
}
\concept{ORFik_experiment}
