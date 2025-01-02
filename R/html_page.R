#' Convert to UNHCR branded HTML website
#'
#' Format for converting from R Markdown to an UNHCR branded HTML website
#'
#' @importFrom bslib bs_theme
#' @importFrom bslib font_google
#' @rdname html_page
#'
#' @param ... extra parameters to pass to `rmarkdown::html_document`
#'
#' @export
html_page <- function(...) {
  unhcr_theme <- bslib::bs_theme(
    version = 5,
    `variable-prefix` = "unhcr-",
    `enable-rounded` = FALSE,
    `gray-100` = "#f2f2f2",
    `gray-200` = "#E6E6E6",
    `gray-300` = "#CCCCCC",
    `gray-400` = "#b3b3b3",
    `gray-500` = "#999999",
    `gray-600` = "#666666",
    `gray-700` = "#4d4d4d",
    `gray-800` = "#333333",
    `gray-900` = "#222222",
    blue = "#0072BC",
    yellow = "#FAEB00",
    green = "#00B398",
    red = "#EF4A60",
    info = "#8EBEFF",
    warning = "#E1CC0D",
    base_font = bslib::font_google("Lato"),
    code_font = bslib::font_google("Source Code Pro"),
    `link-decoration` = "none",
    `link-hover-color` = "#222222",
    `link-hover-decoration` = "underline",
    `blockquote-footer-color` = "#222222",
    `mark-bg` = "#FFF9CB"
  )



  rmarkdown::html_document(
    theme = unhcr_theme,
    ...
  )
}
