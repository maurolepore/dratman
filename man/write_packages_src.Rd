% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_packages.R
\name{write_packages_src}
\alias{write_packages_src}
\alias{write_packages_mac}
\alias{write_packages_win}
\alias{delete_packages}
\title{Write and delete packages.}
\usage{
write_packages_src(dir = path_src())

write_packages_mac(dir = path_mac())

write_packages_win(dir = path_win())

delete_packages(dir)
}
\arguments{
\item{dir}{Character vector describing the location of the repository
    (directory including source or binary packages) to generate the
    \file{PACKAGES}, \file{PACKAGES.gz} and \file{PACKAGES.rds} files
    from and write them to.
  }
}
\value{
Invisibly returns the number of packages described in the resulting
'PACKAGES', 'PACKAGES.gz' and 'PACKAGES.rds' files. If 0, no packages were
found and no files were written.
}
\description{
Write and delete packages.
}
\examples{
\dontrun{
write_packages_src(path_src())
write_packages_win(path_win())
write_packages_mac(path_mac())
}
}
