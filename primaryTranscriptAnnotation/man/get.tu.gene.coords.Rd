% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_tu.R
\name{get.tu.gene.coords}
\alias{get.tu.gene.coords}
\title{Integrate inferred gene coordinates with transcriptional units}
\usage{
get.tu.gene.coords(hmm.ann.overlap = NULL, tss.thresh = NULL,
  delta.tss = NULL, delta.tts = NULL)
}
\arguments{
\item{hmm.ann.overlap}{frame with coordinates from intersecting tus with inferred gene annotations}

\item{tss.thresh}{number of bp a TU beginning can be off from an annotation in
order to be assigned that annotation}

\item{delta.tss}{max distance between an upstream gene end and downstream gene start}

\item{delta.tts}{max difference distance between and annotated gene end and the start
of a downstream gene before an intermediate TU id is assigned}
}
\value{
A bed frame with gene/tu coordinates.
}
\description{
Here we annotate all of the regions in the TU frame based on overlaps with genes.
The analysis details are handles by single.overlaps() and multi.overlaps().
}
\examples{
tss.thresh = 200
delta.tss = 50
delta.tts = 1000
res = get.tu.gene.coords(hmm.ann.overlap=hmm.ann.overlap,
                         tss.thresh=tss.thresh,
                         delta.tss=delta.tss,
                         delta.tts=delta.tts)
}