% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shift_footprints.R
\name{shiftFootprintsByExperiment}
\alias{shiftFootprintsByExperiment}
\title{Shift footprints of each file in experiment}
\usage{
shiftFootprintsByExperiment(
  df,
  out.dir = pasteDir(dirname(df$filepath[1]), "/pshifted/"),
  start = TRUE,
  stop = FALSE,
  top_tx = 10L,
  minFiveUTR = 30L,
  minCDS = 150L,
  minThreeUTR = 30L,
  firstN = 150L
)
}
\arguments{
\item{df}{an ORFik \code{\link{experiment}}}

\item{out.dir}{output directory for files,
default: dirname(df$filepath[1]), making a /pshifted
folder at that location}

\item{start}{(logical) Whether to include predictions based on the start
codons. Default TRUE.}

\item{stop}{(logical) Whether to include predictions based on the stop
codons. Default FASLE. Only use if there exists 3' UTRs for the annotation.}

\item{top_tx}{(integer) Specify which % of the top covered by RiboSeq reads
transcripts to use for estimation of the shifts. By default we take top 10%
top covered transcripts as they represent less noisy dataset. This is only
applicable when there are more than 1000 transcripts.}

\item{minFiveUTR}{(integer) minimum bp for 5' UTR during filtering for the
transcripts. Set to NULL if no 5' UTRs exists for annotation.}

\item{minCDS}{(integer) minimum bp for CDS during filtering for the
transcripts}

\item{minThreeUTR}{(integer) minimum bp for 3' UTR during filtering for the
transcripts. Set to NULL if no 3' UTRs exists for annotation.}

\item{firstN}{(integer) Represents how many bases of the transcripts
downstream of start codons to use for initial estimation of the
periodicity.}
}
\value{
NULL (Objects are saved to out.dir/pshited/"name")
}
\description{
Saves files to a specified location as .bed, it will include a score column
containing read width.
}
\details{
For more details, see: \code{\link{detectRibosomeShifts}}
}
\seealso{
Other pshifting: 
\code{\link{changePointAnalysis}()},
\code{\link{detectRibosomeShifts}()},
\code{\link{shiftFootprints}()}
}
\concept{pshifting}