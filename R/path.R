path_src <- function() {
  here::here("src", "contrib")
}

path_win <- function() {
  here::here("bin", "windows", "contrib", this_r_version())
}

path_mac <- function(mac_version = "el-capitan") {
  here::here("bin", "macosx", mac_version, "contrib", this_r_version())
}
