% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/summary.eb.R
\name{summary.eb}
\alias{summary.eb}
\title{Summary Method for EpiBayes Object}
\usage{
\method{summary}{eb}(object, prob = 0.95, burnin = NULL, n.output = NULL,
  ...)
}
\arguments{
\item{object}{An object of class \code{ebhistorical} (e.g., the output of
function \code{\link{EpiBayesHistorical}}).}

\item{prob}{The probability associated with the highest posterior density (HPD)
intervals one wishes to calculate for each of the reported parameters.}

\item{burnin}{Number of MCMC iterations to discard from the beginning of the chain.
Integer scalar.}

\item{n.output}{Number of replicated data sets' summary measures to print. Integer
scalar.}

\item{...}{Additional arguments to be passed on to summary.}
}
\value{
The summary statistics are returned in a list with the first entry containing the
    simulation output (\code{p2.tilde}, \code{p4.tilde}, and \code{p6.tilde}), the next
    containing summary measures for the first ten replicated data sets' \code{gam}, and
    the rest containing summary measures for the first ten replicated data sets'
    \code{tau} values (one for each subzone, if applicable).
    The summary measurements taken on the posterior distributions include the posterior
    mean, standard deviation, standard error of the mean, time-series adjusted standard
    error of the mean, and the lower and upper HPD interval limits, in that order.
    For reference purposes, below are the descriptions for the summarized variables.

\tabular{lll}{
    Output \tab Description \cr
    \code{p2.tilde} \tab Proportion of simulated data sets that result in the probability of \code{poi} prevalence \emph{below} \code{poi.thresh} with probability \code{p1} \cr
    \code{p4.tilde} \tab Proportion of simulated data sets that result in the probability of \code{poi} prevalence \emph{above} \code{poi.thresh} with probability \code{p1} \cr
    \code{p6.tilde} \tab Proportion of simulated data sets that result in the probability of \code{poi} prevalence \emph{between} \code{poi.lb} and \code{poi.ub} with probability \code{p1} \cr
    \code{taumat} \tab Posterior distributions of the cluster-level prevalence for all simulated data sets (i.e., \code{reps}) \cr
    \code{gammat} \tab Posterior distribution of the subzone-level prevalence (3-level) OR Posterior distribution of the probability of the disease being in the region (2-level) \cr
}
}
\description{
This function gives summary measurements for posterior distributions of cluster-level
    prevalences across all time periods considered. It does so by examining the object
    output by the \code{\link{EpiBayes_ns}} or \code{\link{EpiBayes_s}} function of
    class \code{eb}.
}
\seealso{
This is a method for objects of class \code{eb} returned by the function
    \code{\link{EpiBayes_ns}} or \code{\link{EpiBayes_s}} and creates its own class of
    object much like the summary method for \code{lm} objects.
}

