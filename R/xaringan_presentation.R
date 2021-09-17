#' Convert to UNHCR branded Xaringan presentation
#'
#' Format for converting from R Markdown to an UNHCR branded Xaringan presentation
#'
#' @rdname xaringan_presentation
#'
#' @importFrom xaringan moon_reader
#'
#' @param ... extra parameters to pass to `xaringan::moon_reader`
#'
#' @export
xaringan_presentation <- function(...) {

  main_css <- pkg_resource("css/unhcr-slides.css")
  font_css <- pkg_resource("css/unhcr-slides-fonts.css")

  xaringan::moon_reader(
    css = c("default", main_css, font_css),
    ...
  )
}
