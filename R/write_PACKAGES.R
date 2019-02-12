write_packages_src <- function(dir = path_src()) {
  tools::write_packages(dir = dir, type = "source")
}

write_packages_mac <- function(dir = path_mac()) {
  tools::write_packages(dir = dir, type = "mac.binary")
}

write_packages_win <- function(dir = path_win()) {
  tools::write_PACKAGES(dir = dir, type = "win.binary")
}

delete_PACKAGES <- function(dir) {
  fs::file_delete(fs::dir_ls(path = dir, regexp = "PACKAGES"))
}

this_r_version <- function() {
  paste0(R.version$major, ".", pull_minor(), collapse = ".")
}

pull_minor <- function() {
  strsplit(R.version$minor, ".", fixed = TRUE)[[1]][[1]]
}

