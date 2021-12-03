#' Convert to UNHCR branded HTML presentation
#'
#' Format for converting from R Markdown to an UNHCR branded HTML presentation
#'
#' @rdname html_slides
#'
#' @importFrom xaringan moon_reader
#'
#' @param other_css Add extra css
#' @param nature See ?xaringan::moon_reader
#' @param ... extra parameters to pass to `xaringan::moon_reader`
#'
#' @export
html_slides <- function(other_css = NULL,
                        nature =  list(countIncrementalSlides = "no",
                                       highlightLines = "yes",
                                       highlightStyle = "github",
                                       ratio = "16:9"),
                        ...) {
  # css files
  color_variables_css <- pkg_resource("css/color_variables.css")
  fonts_css <- pkg_resource("css/fonts.css")
  html_slides_css <- pkg_resource("css/html_slides.css")

  # html footer
  footer_html <- pkg_resource("html/footer_html_slides.html")

  xaringan::moon_reader(
    css = c(color_variables_css, fonts_css , html_slides_css, other_css),
    includes = list(after_body = footer_html),
    nature = nature,
    ...
  )
}
