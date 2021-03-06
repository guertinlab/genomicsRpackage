% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulation_functions.R
\name{sim_best}
\alias{sim_best}
\title{Implement simulation}
\usage{
sim_best(best_params = NULL, mRange_best = NULL, tsim = NULL,
  numPar = NULL, XY = NULL, datHMF = NULL, ic = NULL)
}
\arguments{
\item{mRange_best}{A set of m-values.}

\item{tsim}{simulation time vector.}

\item{numPar}{Number of simulation parameters.}

\item{XY}{Object generated by getXY().}

\item{datHMF}{The data matrix with scaled measurements measurements. Scaled center measurements are provided for 
each measurement/annotation (e.g., gene/organ) combination. This format is produced by scale_zeroOne().}

\item{ic}{Initial conditions.}
}
\value{
Simulation results
}
\description{
This function performs a simulation for a single set of simulation parameters.
}
\examples{
best_sims = sim_best(best_params,mRange_best,tsim,numPar,XY,datHMF,ic)
best_sims$simulations[,1] = best_sims$simulations[,1] + min(datHMF[,1])
}
