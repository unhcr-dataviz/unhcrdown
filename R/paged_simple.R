#' Function for UNHCR paged simple template
#'
#' @param back_html Back-cover HTML including contact information
#' @param other_css Add extra css
#' @param number_sections Number section headings
#' @param ... Arguments passed to pagedown::html_paged
#'
#' @return An R Markdown output format.
#' 
#' @examples
#' \dontrun{
#' # Requires pandoc
#'
#' # Create an R Markdown example file
#' rmd_content <- "---
#'  title: 'Example UNHCR HTML'
#'  subtitle: 'Paged Report Simple'
#'  output: unhcrdown::paged_simple
#'  ---
#'
#'  ## Introduction
#'
#'  This is an example of a UNHCR-branded HTML paged report siple using `unhcrdown::paged_simple`.
#'  "
#'
#' # Write the R Markdown content to a file
#' example_file <- tempfile(fileext = ".Rmd")
#' writeLines(rmd_content, example_file)
#'
#' # Render the R Markdown file
#' rmarkdown::render(example_file,
#'   output_format = unhcrdown::paged_simple()
#'   output_dir = tempdir()
#' )
#' 
#' # View the rendered HTML file
#' browseURL(render_file)
#' }
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
