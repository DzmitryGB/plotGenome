% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compareRatios.R
\name{compareRatios}
\alias{compareRatios}
\title{A function to compare two replication profiles}
\usage{
compareRatios(ratio1, ratio2)
}
\arguments{
\item{ratio1}{Ratio dataframe, or a string containing name of a ratio dataframe (dataframe or string).}

\item{ratio2}{Ratio dataframe, or a string containing name of a ratio dataframe (dataframe or string).}
}
\description{
compareRatios takes two ratio dataframes that were binned the same way and uses z-score
statistics to find p-values of their differences. The function outputs a combined dataframe containing
the two input ratio dataframes in a long format with added 'p.value' column.
}
\examples{
ratioDFs <- compareRatios(W303norm,Dbf4myc)
}
\keyword{BED}
\keyword{bioinformatics}
\keyword{genomics}
