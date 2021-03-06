% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/log_hours.R
\name{log_hours}
\alias{log_hours}
\title{log_hours}
\usage{
log_hours(spreadname, sheetname = "Sheet 1", inputdate = NULL, hour,
  descrip)
}
\arguments{
\item{spreadname}{spreadsheet name.}

\item{sheetname}{name of the sheet in spreadsheet.}

\item{inputdate}{date.}

\item{hour}{seconds.}

\item{descrip}{description.}
}
\description{
Log hours to my google spreadsheet.
}
\examples{
log_hours(spreadname = "Job_log", hour = 2, descrip = "hi")
}
\author{
Charco Hui
}
