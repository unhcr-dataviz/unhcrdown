#' Convert to UNHCR branded HTML website
#'
#' Format for converting from R Markdown to an UNHCR branded HTML website
#'
#' @rdname html_page
#'
#' @param ... extra parameters to pass to `rmarkdown::html_document`
#'
#' @export
html_page <- function(...) {
  unhcr_theme <- unhcrdesign::unhcr_bslib
  rmarkdown::html_document(
    theme = unhcr_theme,
    ...)
}
