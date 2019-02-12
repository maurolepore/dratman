#' Write and delete packages.
#'
#' @inheritParams tools::write_PACKAGES
#'
#' @return Invisibly returns the number of packages described in the resulting
#'   'PACKAGES', 'PACKAGES.gz' and 'PACKAGES.rds' files. If 0, no packages were
#'   found and no files were written.
#'
#' @export
#'
#' @examples
#' write_packages_src(path_src())
#' write_packages_win(path_win())
#' write_packages_mac(path_mac())
write_packages_src <- function(dir = path_src()) {
  tools::write_PACKAGES(dir = dir, type = "source")
}

#' @rdname write_packages_src
#' @export
write_packages_mac <- function(dir = path_mac()) {
  tools::write_PACKAGES(dir = dir, type = "mac.binary")
}

#' @rdname write_packages_src
#' @export
write_packages_win <- function(dir = path_win()) {
  tools::write_PACKAGES(dir = dir, type = "win.binary")
}

#' @rdname write_packages_src
#' @export
delete_packages <- function(dir) {
  fs::file_delete(fs::dir_ls(path = dir, regexp = "PACKAGES"))
}

this_r_version <- function() {
  paste0(R.version$major, ".", pull_minor(), collapse = ".")
}

pull_minor <- function() {
  strsplit(R.version$minor, ".", fixed = TRUE)[[1]][[1]]
}

