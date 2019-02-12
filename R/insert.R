#' Build and insert source and binary packages.
#'
#' These are wrappers around [drat::insertPackage()] for convenience.
#'
#' @inheritParams drat::insertPackage
#'
#' @seealso [drat::insertPackage()].
#'
#' @return NULL
#' @export
#'
#' @examples
#' \dontrun{
#' path_to_source <- "../fgeo.x"
#' build_and_instert_src(path_to_source)
#'
#' # If you are on windows
#' build_and_instert_bin(path_to_source)
#'
#' # If you are on mac
#' build_and_instert_bin(path_to_source)
#' }
build_and_insert_src <- function(file, repodir = ".") {
  drat::insertPackage(
    devtools::build(pkg = file, binary = FALSE), repodir = repodir
  )
}

#' @rdname build_and_insert_src
#' @export
build_and_insert_bin <- function(file, repodir = ".") {
  drat::insertPackage(
    devtools::build(pkg = file, binary = TRUE), repodir = repodir
  )
}

#' Help to create a path to downloads
#'
#' @param file File name.
#'
#' @return A path.
#' @export
#'
#' @examples
#' path_downloads()
#' path_downloads("fgeo_1.0.0.tgz")
path_downloads <- function(file = NULL) {
  if (is.null(file)) {
    fs::path("~", "Downloads")
  } else {
    fs::path("~", "Downloads", file)
  }
}
