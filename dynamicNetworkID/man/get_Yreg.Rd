% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/regression_functions.R
\name{get_Yreg}
\alias{get_Yreg}
\title{Y vector for regression}
\usage{
get_Yreg(datHMF = NULL, Y = NULL, numPar = NULL, mRange = NULL)
}
\arguments{
\item{datHMF}{The data matrix with scaled measurements measurements. Scaled center measurements are provided for 
each measurement/annotation (e.g., gene/organ) combination. This format is produced by scale_zeroOne(). Defaults to datHMF.}

\item{Y}{The Y data obtained with getXY(). Defaults to NULL.}

\item{numPar}{The number of parameters found by multiplying the number of annotations 
by the number of measured features (e.g., number of orggans * number of genes). 
numPar = ((ncol(datHMF)-2)^2)*(length(unique(datHMF[,2]))^2). Defaults to NULL.}

\item{mRange}{The m-value range. Defaults to NULL.}
}
\value{
The Y vector for regression analysis
}
\description{
This function establishes the Y vector for a specific set of m-values (Equation 11, Anderson et al., 2017).
}
\examples{
Yreg = get_Yreg(datHMF,XY$Y,numPar,mRange)
}
\references{
\url{http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005627}
}
