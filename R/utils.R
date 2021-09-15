pkg_resource <- function(...) {
  system.file("resources", ..., package = "unhcrdown", mustWork = TRUE)
}
