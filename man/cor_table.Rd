% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/report_plots.R
\name{cor_table}
\alias{cor_table}
\title{Get correlation between columns}
\usage{
cor_table(
  dt,
  method = c("pearson", "spearman")[1],
  upper_triangle = TRUE,
  decimals = 2,
  melt = TRUE,
  na.rm.melt = TRUE
)
}
\arguments{
\item{dt}{a data.table}

\item{method}{c("pearson", "spearman")[1]}

\item{upper_triangle}{logical, default TRUE. Make lower triangle values NA.}

\item{decimals}{numeric, default 2. How many decimals for correlation}

\item{melt}{logical, default TRUE.}

\item{na.rm.melt}{logical, default TRUE. Remove NA values from melted table.}
}
\value{
a data.table with 3 columns, Var1, Var2 and Cor
}
\description{
Get correlation between columns
}
