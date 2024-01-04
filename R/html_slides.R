#' Convert to UNHCR branded HTML presentation
#'
#' Format for converting from R Markdown to an UNHCR branded HTML presentation
#'
#' @rdname html_slides
#'
#' @importFrom xaringan moon_reader
#'
#' @param other_css Add extra css
#' @param ... extra parameters to pass to `xaringan::moon_reader`
#'
#' @export
html_slides <- function(other_css = NULL,
                        ...) {
  # css file
  html_slides_css <- pkg_resource("css/html_slides.css")

  # html footer
  footer_html <- pkg_resource("html/footer_html_slides.html")

  xaringan::moon_reader(
    css = c(html_slides_css, other_css),
    includes = list(after_body = footer_html),
    ...
  )
}
