#' Function for UNHCR paged simple template
#'
#' @param back_html Back-cover HTML including contact information
#' @param other_css Add extra css
#' @param number_sections Number section headings
#' @param ... Arguments passed to pagedown::html_paged
#'
#' @return An R Markdown output format.
#' @export
paged_simple <- function(back_html = TRUE,
                         other_css = NULL,
                         number_sections = FALSE,
                         ...) {
  # css file
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
    css = c(paged_simple_css, other_css),
    includes = list(after_body = back_html),
    number_sections = number_sections,
    ...
  )
}
