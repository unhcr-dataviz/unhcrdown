#' Convert to UNHCR branded Word document
#'
#' Format for converting from R Markdown to an UNHCR branded Word simple document
#'
#' @rdname docx_simple
#'
#' @param ... extra parameters to pass to `officedown::rdocx_document`
#'
#' @return An R Markdown output format.
#'
#' @examples
#' \dontrun{
#' # Requires pandoc
#'
#' # Create an R Markdown example file
#' rmd_content <- "---
#'  title: 'Example UNHCR Word Document'
#'  output: unhcrdown::docx_simple
#'  ---
#'
#'  ## Introduction
#'
#'  This is an example of a UNHCR-branded Word document created using `unhcrdown::docx_simple`.
#'  "
#'
#' # Write the R Markdown content to a file
#' example_file <- tempfile(fileext = ".Rmd")
#' writeLines(rmd_content, example_file)
#'
#' # Render the R Markdown file
#' rmarkdown::render(example_file,
#'   output_format = unhcrdown::docx_simple(),
#'   output_dir = tempdir()
#' )
#' }
#' @export
docx_simple <- function(...) {
  docx_template <- pkg_resource("templates/docx_template.docx")

  page_margins <- list(
    bottom = 0.8,
    top = 1.75,
    right = 1,
    left = 1,
    gutter = 0
  )

  lists <- list(
    ol.style = "Number",
    ul.style = "Bullet"
  )

  tables <- list(
    style = "Table Simple",
    layout = "autofit",
    width = 1,
    caption = list(style = "Table Caption", pre = "Table ", sep = ": "),
    conditional = list(
      first_row = TRUE, first_column = FALSE, last_row = FALSE,
      last_column = FALSE, no_hband = TRUE, no_vband = TRUE
    )
  )

  plots <- list(
    style = "Figure",
    align = "center",
    caption = list(
      style = "Image Caption",
      pre = "Figure ",
      sep = ": "
    )
  )

  officedown::rdocx_document(
    reference_docx = docx_template,
    page_margins = page_margins,
    tables = tables,
    plots = plots,
    lists = lists,
    ...
  )
}

#' @rdname docx_simple
#' @noRd
doc_simple <- docx_simple
