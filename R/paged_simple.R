#' Function for UNHCR paged simple template
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
  # css files
  reset_css <- pkg_resource("css/reset.css")
  color_variables_css <- pkg_resource("css/color_variables.css")
  fonts_css <- pkg_resource("css/fonts.css")
  paged_base_css <- pkg_resource("css/paged_base.css")
  paged_simple_css <- pkg_resource("css/paged_simple.css")

  # html back-cover
  if (back_html) {
    back_html <-
      pkg_resource("html/back_paged_simple.html")
  } else {
    back_html <- NULL
  }
  # template
  pagedown::html_paged(
    css = c(reset_css, color_variables_css,
            fonts_css, paged_base_css,
            paged_simple_css, other_css),
    includes = list(after_body = back_html),
    ...)
}
