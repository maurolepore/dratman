#' Build and insert source and binary packages.
#'
#' These are wrappers around [drat::insertPackage()] for convenience.
#'
#' @inheritParams drat::insertPackage
#'
#' @return NULL
#' @export
#'
#' @examples
#' \dontrun{
#' build_and_instert_src(path_src())
#' }
build_and_insert_src <- function(path, repodir = ".") {
  drat::insertPackage(devtools::build(path, binary = FALSE), repodir = repodir)
}

build_and_insert_bin <- function(path, repodir = ".") {
  drat::insertPackage(devtools::build(path, binary = TRUE), repodir = repodir)
}

insert_bin <- function(path, repodir = ".") {
  drat::insertPackage(file = path, repodir = repodir)
}

path_downloads <- function(file = NULL) {
  if (is.null(file)) {
    fs::path("~", "Downloads")
  } else {
    fs::path("~", "Downloads", file)
  }
}
