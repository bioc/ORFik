% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ORFs_annotations.R
\name{assignAnnotations}
\alias{assignAnnotations}
\title{Overlaps GRanges object with provided annotations.}
\usage{
assignAnnotations(ORFs, con)
}
\arguments{
\item{ORFs}{- GRanges or GRangesList object of your ORFs.}

\item{con}{- Path to gtf file with annotations.}
}
\value{
A GRanges object of your ORFs with metadata columns 'gene',
'transcript', isoform' and 'biotype'.
}
\description{
It will return same list of GRanges, but with metdata columns:
trainscript_id - id of transcripts that overlap with each ORF
gene_id - id of gene that this transcript belongs to
isoform - for coding protein alignment in relation to cds on coresponding
transcript,
for non-coding transcripts alignment in relation to the transcript.
}
\keyword{internal}
