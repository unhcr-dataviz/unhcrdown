#' Function for UNHCR paged report template
#'
#' @param back_html Back-cover HTML including contact information
#' @param other_css Add extra css
#' @param ... Arguments passed to pagedown::html_paged
#'
#' @return A pagedown report
#' @export
paged_simple <- function(back_html = TRUE,
                         other_css = NULL,
                         ...) {
  # arguments
  base_css <-
    pkg_resource("css/paged-base.css")
  main_css <-
    pkg_resource("css/paged-simple.css")

  # back-cover
  if (back_html) {
    back_html <-
      pkg_resource("html/back-cover-paged-simple.html")
  } else {
    back_html <- NULL
  }
  # template
  pagedown::html_paged(
    css = c(base_css, main_css, other_css),
    includes = list(after_body = back_html),
    ...)
}
