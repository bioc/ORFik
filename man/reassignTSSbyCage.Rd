% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cage_annotations.R
\name{reassignTSSbyCage}
\alias{reassignTSSbyCage}
\title{Reassign all Transcript Start Sites (TSS)}
\usage{
reassignTSSbyCage(
  fiveUTRs,
  cage,
  extension = 1000,
  filterValue = 1,
  restrictUpstreamToTx = FALSE,
  removeUnused = FALSE,
  preCleanup = TRUE,
  cageMcol = FALSE
)
}
\arguments{
\item{fiveUTRs}{(GRangesList) The 5' leaders or full transcript sequences}

\item{cage}{Either a filePath for the CageSeq file as .bed .bam or .wig,
with possible compressions (".gzip", ".gz", ".bgz"), or already loaded
CageSeq peak data as GRanges or GAlignment.
NOTE: If it is a .bam file, it will add a score column by running:
convertToOneBasedRanges(cage, method = "5prime", addScoreColumn = TRUE)
The score column is then number of replicates of read, if score column is
something else, like read length, set the score column to NULL first.}

\item{extension}{The maximum number of basses upstream of the TSS to search
for CageSeq peak.}

\item{filterValue}{The minimum number of reads on cage position, for it to
be counted as possible new tss. (represented in score column in
CageSeq data) If you already filtered, set it to 0.}

\item{restrictUpstreamToTx}{a logical (FALSE). If TRUE: restrict leaders to
not extend closer than 5 bases from closest upstream leader, set this
to TRUE.}

\item{removeUnused}{logical (FALSE), if False:  (standard is to set them to
original annotation), If TRUE: remove leaders that did not have any cage
support.}

\item{preCleanup}{logical (TRUE), if TRUE,
remove all reads in region (-5:-1, 1:5) of all original tss in leaders.
This is to keep original TSS if it is only +/- 5 bases from the original.}

\item{cageMcol}{a logical (FALSE), if TRUE, add a meta column to the
returned object with the raw CAGE counts in support for new TSS.}
}
\value{
a GRangesList of newly assigned TSS for fiveUTRs,
 using CageSeq data.
}
\description{
Given a GRangesList of 5' UTRs or transcripts, reassign the start
sites using max peaks from CageSeq data. A max peak is defined as new
TSS if it is within boundary of 5' leader range, specified by
`extension` in bp. A max peak must also be higher than minimum
CageSeq peak cutoff specified in `filterValue`. The new TSS will then
be the positioned where the cage read (with highest read count in the
interval). If removeUnused is TRUE, leaders without cage hits, will be
removed, if FALSE the original TSS will be used.
}
\details{
Note: If you used CAGEr, you will get reads of a probability region, with
always score of 1. Remember then to set filterValue to 0. And you should use
the 5' end of the read as input, use: ORFik:::convertToOneBasedRanges(cage)
NOTE on filtervalue: To get high quality TSS, set filtervalue to median
count of reads overlapping per leader. This will make you discard a lot of
new TSS positions though. I usually use 10 as a good standard.

TIP: do summary(countOverlaps(fiveUTRs, cage)) so you can find a good
cutoff value for noise.
}
\examples{
# example 5' leader, notice exon_rank column
fiveUTRs <- GenomicRanges::GRangesList(
  GenomicRanges::GRanges(seqnames = "chr1",
                         ranges = IRanges::IRanges(1000, 2000),
                         strand = "+",
                         exon_rank = 1))
names(fiveUTRs) <- "tx1"

# make fake CAGE data from promoter of 5' leaders, notice score column
cage <- GenomicRanges::GRanges(
  seqnames = "1",
  ranges =  IRanges::IRanges(500, width = 1),
  strand = "+",
  score = 10) # <- Number of tags (reads) per position
# notice also that seqnames use different naming, this is fixed by ORFik
# finally reassign TSS for fiveUTRs
reassignTSSbyCage(fiveUTRs, cage)
# See vignette for example using gtf file and real CAGE data.

}
\seealso{
Other CAGE: 
\code{\link{assignTSSByCage}()},
\code{\link{reassignTxDbByCage}()}
}
\concept{CAGE}
