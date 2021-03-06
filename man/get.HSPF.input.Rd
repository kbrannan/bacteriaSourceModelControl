% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get-HSPF-input.R
\name{get.HSPF.input}
\alias{get.HSPF.input}
\title{get output from source model runs for input to HSPF sup-file or MUTSIN files}
\usage{
get.HSPF.input(chr.srch, df.out, chr.col.name)
}
\arguments{
\item{chr.srch}{is search term either "accum", "lim", or "mutsin"}

\item{df.out}{is data.frame from "run.model.source.subs" function}

\item{chr.col.name}{is the name of the column that has the HSPF  input either "accum", "lim", or "mutsin"}
}
\description{
get output from source model runs for input to HSPF sup-file or MUTSIN files
}
