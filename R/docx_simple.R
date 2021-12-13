#' Convert to UNHCR branded Word document
#'
#' Format for converting from R Markdown to an UNHCR branded Word simple document
#'
#' @rdname docx_simple
#'
#' @param ... extra parameters to pass to `officedown::rdocx_document`
#'
#' @export
docx_simple <- function(...) {

  docx_template <- pkg_resource("templates/docx_template.docx")

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
    tables = tables,
    plots = plots,
    lists = lists,
    ...
  )

}

#' @rdname docx_simple
#' @noRd
doc_simple <- docx_simple
