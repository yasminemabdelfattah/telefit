% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coef.stPredict.R
\name{coef.stPredict}
\alias{coef.stPredict}
\title{Compute point estimates for parameters from posterior samples}
\usage{
\method{coef}{stPredict}(object, stFit, stData, burn = 1,
  type = "eof-alpha_knots", ...)
}
\arguments{
\item{object}{stPredict object containing posterior estimates of alphas}

\item{stFit}{stFit object containing posterior samples for model}

\item{stData}{stData object containing spatial information for dataset}

\item{burn}{number of posterior samples to reject before computing estimates}

\item{type}{One of the following options to specify what point estimates to return
\describe{
  \item{eof-alpha_knots}{ Remote coefficient estimates (alpha_knots) 
    mapped onto the eof patterns of the remote covariates.   }
}}

\item{...}{S3 generic/method consistency}
}
\description{
Compute point estimates for parameters from posterior samples
}
\examples{

data("coprecip")
data("coprecip.fit")
data("coprecip.predict")

coef(coprecip.predict, stFit = coprecip.fit, stData = coprecip, burn = 50)
 
}
