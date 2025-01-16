#' Convert to UNHCR branded Powerpoint presentation
#'
#' Format for converting from R Markdown to an UNHCR branded Powerpoint presentation
#'
#' @rdname pptx_slides
#'
#' @param ... extra parameters to pass to `officedown::rpptx_document`
#'
#' @return An R Markdown output format.
#'
#' @examples
#' \dontrun{
#' # Requires pandoc
#'
#' # Create an R Markdown example file
#' rmd_content <- "---
#'  title: 'Example UNHCR PowerPoint Presentation'
#'  output: unhcrdown::pptx_slides
#'  ---
#'
#'  ## Introduction
#'
#'  This is an example of a UNHCR-branded PowerPoint presentation
#'  created using `unhcrdown::pptx_slides`.
#'  "
#'
#' # Write the R Markdown content to a file
#' example_file <- tempfile(fileext = ".Rmd")
#' writeLines(rmd_content, example_file)
#'
#' # Render the R Markdown file
#' rmarkdown::render(example_file,
#'   output_format = unhcrdown::pptx_slides(),
#'   output_dir = tempdir()
#' )
#' }
#' @export
pptx_slides <- function(...) {
  pptx_template <- pkg_resource("templates/pptx_template.pptx")

  officedown::rpptx_document(
    reference_doc = pptx_template,
    ...
  )
}

#' @rdname pptx_slides
#' @noRd
ppt_slides <- pptx_slides
