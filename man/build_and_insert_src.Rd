% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/insert.R
\name{build_and_insert_src}
\alias{build_and_insert_src}
\alias{build_and_insert_bin}
\title{Build and insert source and binary packages.}
\usage{
build_and_insert_src(file, repodir = ".")

build_and_insert_bin(file, repodir = ".")
}
\arguments{
\item{file}{An R package in source or binary format,}

\item{repodir}{A local directory corresponding to the repository
top-level directory.}
}
\description{
These are wrappers around \code{\link[drat:insertPackage]{drat::insertPackage()}} for convenience.
}
\examples{
\dontrun{
path_to_source <- "../fgeo.x"
build_and_instert_src(path_to_source)

# If you are on windows
build_and_instert_bin(path_to_source)

# If you are on mac
build_and_instert_bin(path_to_source)
}
}
\seealso{
\code{\link[drat:insertPackage]{drat::insertPackage()}}.
}
