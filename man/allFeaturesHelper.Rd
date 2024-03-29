% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compute_Features.R
\name{allFeaturesHelper}
\alias{allFeaturesHelper}
\title{Calculate the features in computeFeatures function}
\usage{
allFeaturesHelper(
  grl,
  RFP,
  RNA,
  tx,
  fiveUTRs,
  cds,
  threeUTRs,
  faFile,
  riboStart,
  riboStop,
  sequenceFeatures,
  uorfFeatures,
  grl.is.sorted,
  weight.RFP = 1L,
  weight.RNA = 1L,
  st = NULL
)
}
\arguments{
\item{grl}{a \code{\link{GRangesList}} object
with usually ORFs, but can also be either leaders, cds', 3' utrs, etc.
This is the regions you want to score.}

\item{RFP}{RiboSeq reads as \code{\link{GAlignments}} , \code{\link{GRanges}}
or \code{\link{GRangesList}} object}

\item{RNA}{RnaSeq reads as \code{\link{GAlignments}} , \code{\link{GRanges}}
or \code{\link{GRangesList}} object}

\item{tx}{a GRangesList of transcripts,
normally called from: exonsBy(Gtf, by = "tx", use.names = T)
only add this if you are not including Gtf file
If you are using CAGE, you do not need to reassign these to the cage
peaks, it will do it for you.}

\item{fiveUTRs}{fiveUTRs as GRangesList, if you used cage-data to
extend 5' utrs, remember to input CAGE assigned version and not original!}

\item{cds}{a GRangesList of coding sequences}

\item{threeUTRs}{a GRangesList of transcript 3' utrs,
normally called from: threeUTRsByTranscript(Gtf, use.names = T)}

\item{faFile}{a path to fasta indexed genome, an open \code{\link{FaFile}},
a BSgenome, or path to ORFik \code{\link{experiment}} with valid genome.}

\item{riboStart}{usually 26, the start of the floss interval, see ?floss}

\item{riboStop}{usually 34, the end of the floss interval}

\item{sequenceFeatures}{a logical, default TRUE, include all sequence
features, that is: Kozak, fractionLengths, distORFCDS, isInFrame,
isOverlapping and rankInTx. uorfFeatures = FALSE will remove the 4 last.}

\item{uorfFeatures}{a logical, default TRUE, include all uORF sequence
features, that is: distORFCDS, isInFrame, isOverlapping and rankInTx}

\item{grl.is.sorted}{logical (F), a speed up if you know argument grl
is sorted, set this to TRUE.}

\item{weight.RFP}{a vector (default: 1L). Can also be character name of
column in RFP. As in translationalEff(weight = "score") for:
GRanges("chr1", 1, "+", score = 5), would mean score column tells
that this alignment region was found 5 times.}

\item{weight.RNA}{Same as weightRFP but for RNA weights.
(default: 1L)}

\item{st}{(NULL), if defined must be: st = startRegion(grl, tx, T, -3, 9)}
}
\value{
a data.table with features
}
\description{
Not used directly, calculates all features internally for computeFeatures.
}
\keyword{internal}
