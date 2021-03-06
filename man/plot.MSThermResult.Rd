% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plot.MSThermResult}
\alias{plot.MSThermResult}
\title{Plot MSThermResult object.}
\usage{
\method{plot}{MSThermResult}(x, table = T, col, CI.points = T, CI.Tm = T,
  ...)
}
\arguments{
\item{x}{An MSThermResult object}

\item{table}{(T/f) include table of per-replicate parameters}

\item{col}{array of colors used to plot samples}

\item{CI.points}{(T/F) plot temperature point confidence intervals}

\item{CI.Tm}{(T/F) plot Tm confidence intervals}

\item{...}{other parameters passed through to plot()}
}
\value{
Nothing
}
\description{
Generate a denaturation plot for an modeled protein/group.
}
\examples{
control <- system.file("extdata", "demo_project/control.tsv", package="mstherm")
annots  <- system.file("extdata", "demo_project/annots.tsv",  package="mstherm")
expt    <- MSThermExperiment(control, annotations=annots)
expt    <- normalize_to_std(expt, "cRAP_ALBU_BOVIN", plot=FALSE)
res     <- model_experiment(expt, bootstrap=FALSE, np=2)

# plot single MSThermResult
plot(res$P38707)

# plot all proteins (e.g. to pdf device, one-per-page)
plot(res)

}
