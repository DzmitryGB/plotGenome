% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loadBed.R
\name{loadBed}
\alias{loadBed}
\title{Load a BED formatted file.}
\usage{
loadBed(file, genome = NULL, name = NULL)
}
\arguments{
\item{file}{Path to the BED file (string, mandatory)}

\item{genome}{A mask dataframe to exclude data from the BED file (dataframe, optional).
The genome dataframe must contain "chrom" column and may further contain "chromStart" and "chromEnd" columns in this
 order.}

\item{name}{A string to replace the 'name' column of the loaded BED file with (string, optional).}
}
\description{
The function reads BED formatted files. The BED file format defined by UCSC: http://genome.ucsc.edu/FAQ/FAQformat.
 First three columns ("chrom", "chromStart", "chromEnd") are mandatory. The file fields may be separated by tabs,
  spaces or commas. If the BED file contains a header, it will be ignored. If a genome mask dataframe is provided,
  only data intersected with the mask will be retained. Resulting data is ordered by "chromStart" columns.
}
\examples{
W303_G2 <- loadBed(system.file("extdata/W303_G2.bed",package="Repliscope"), name='W303_G2')
W303_G2_chrI <- loadBed(system.file("extdata/W303_G2.bed",package="Repliscope"),
                       name='W303_G2',genome=sacCer3[["genome"]])
}
\keyword{BED}
\keyword{bioinformatics}
\keyword{genomics}
