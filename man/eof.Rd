% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eof.R
\name{eof}
\alias{eof}
\title{Performs an EOF decomposition of the data}
\usage{
eof(X, center = F, scale = F)
}
\arguments{
\item{X}{[variable x observation] matrix of data for which to compute EOFs}

\item{center}{TRUE/FALSE to center columns of X in call to prcomp}

\item{scale}{TRUE/FALSE to scale columns of X in call to prcomp}
}
\value{
A list containing EOF patterns as columns, and their scores
}
\description{
Uses the stats::prcomp function to implement EOF decompositions of data
}
\examples{
data("coprecip")
attach(coprecip)

# compute ocean surface temperature eofs
eofs = eof(Z)

# view first EOF, which corresponds to the El-Nino pattern
coords.r.mod = coords.r
coords.r.mod[,1][coords.r.mod[,1]>0] =
  coords.r.mod[,1][coords.r.mod[,1]>0] - 360
fields::quilt.plot(coords.r.mod, eofs$patterns[,1])

# alternatively, the plot.stData function can directly compute and plot EOFs
plot(coprecip, type='eof', pattern=1)

}
