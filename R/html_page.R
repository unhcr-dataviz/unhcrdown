#' Convert to UNHCR branded HTML website
#'
#' Format for converting from R Markdown to an UNHCR branded HTML website
#'
#' @importFrom unhcrdesign use_unhcr_bslib
#' @rdname html_page
#'
#' @param ... extra parameters to pass to `rmarkdown::html_document`
#'
#' @export
html_page <- function(...) {
  unhcr_theme <- unhcrdesign::use_unhcr_bslib()
  rmarkdown::html_document(
    theme = unhcr_theme,
    ...)
}
