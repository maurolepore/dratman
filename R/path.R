#' Create paths to packages in a CRAN-like repository.
#'
#' @param mac_version Versoin of mac the package was build on.
#'
#' @return Path
#' @export
#'
#' @examples
#' \dontrun{
#' path_src()
#' path_win()
#' path_mac()
#' }
path_src <- function() {
  here::here("src", "contrib")
}

#' @rdname path_src
#' @export
path_win <- function() {
  here::here("bin", "windows", "contrib", this_r_version())
}

#' @rdname path_src
#' @export
path_mac <- function(mac_version = "el-capitan") {
  here::here("bin", "macosx", mac_version, "contrib", this_r_version())
}
