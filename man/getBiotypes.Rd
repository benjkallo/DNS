% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DNS.R
\name{getBiotypes}
\alias{getBiotypes}
\title{Classifying Transcriptomes in Biotypes}
\source{
\href{https://www.gencodegenes.org/human/release_25lift37.html}{Refrence GRCh37 genome}
for details on gtf format visit \href{https://useast.ensembl.org/info/website/upload/gff.html}{ensemble}
}
\usage{
getBiotypes(full_gr, gencode_gr, intron_gr = NULL, minoverlap = 1L)
}
\arguments{
\item{full_gr}{A GRanges object of coding and noncoding transctipts. Unique
identifications for each column must be assigned.More details can be found
in the GRanges package.}

\item{gencode_gr}{This GRanges object contains a GENCODE reference
annotation.It must have a column of biotypes.}

\item{intron_gr}{A GRanges object containing the coordinates of introns.For
details see GRanges package.}

\item{minoverlap}{Detects minimum overlap between two IRanges objects.
Details Overlap arguments are included in the IRanges package.}
}
\value{
Returns the classified transcriptome biotypes.
}
\description{
The purpose of the getBiotypes function is to class both coding and noncoding
transcripts into biotypes using the most recent GENCODE annotations. This
tool can also be used to define potential lncRNAs, given an available genome
transcriptome assembly (a gtf file) or any genomic loci of interest.
}
\details{
For details of findOverlaps, type.partialOverlap, type.50Overlap
type.toPlot, queryhits, and subjecthits see
\href{https://www.bioconductor.org/packages/release/bioc/html/GenomicRanges.html}{GenomicRanges}
\href{https://www.bioconductor.org/packages/release/bioc/html/IRanges.html}{IRanges},
and \href{http://bioconductor.org/install/index.html}{BiocManager}.
}
\note{
Replace the path_file when loading data locally to the data directory.
}
\examples{
#Input datasets locally
data("gencode_gr.v19_chr21.rda")
data("intron_gr.chr21.rda")
data("data/ILEF_gr.chr21.rda")

getBiotypes(ILEF_gr,gencode_gr)

\dontrun{getBiotypes('intron_gr')}

}
\references{
Wang, Z. Z., J. M. Cunningham and X. H. Yang (2018).'CisPi: a transcriptomic score for disclosing cis-acting disease-associated lincRNAs.'
Bioinformatics34(17): 664-670'
}
