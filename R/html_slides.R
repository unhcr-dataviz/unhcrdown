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
#' @return An R Markdown output format.
#' 
#' @examples
#' \dontrun{
#' # Requires pandoc
#'
#' # Create an R Markdown example file
#' rmd_content <- "---
#'  title: 'Example UNHCR HTML Slides'
#'  output: unhcrdown::html_slides
#'  ---
#'
#'  ## Introduction
#'
#'  This is an example of a UNHCR-branded HTML slides created using `unhcrdown::html_slides`.
#'  "
#'
#' # Write the R Markdown content to a file
#' example_file <- tempfile(fileext = ".Rmd")
#' writeLines(rmd_content, example_file)
#'
#' # Render the R Markdown file
#' rmarkdown::render(example_file,
#'   output_format = unhcrdown::html_slides()
#'   output_dir = tempdir()
#' )
#'
#' # View the rendered HTML file
#' browseURL(render_file)
#' }
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
