#' Convert to UNHCR branded Powerpoint presentation
#'
#' Format for converting from R Markdown to an UNHCR branded Powerpoint presentation
#'
#' @rdname pptx_slides
#'
#' @param ... extra parameters to pass to `officedown::rpptx_document`
#'
#' @importFrom officedown rpptx_document
#' @importFrom officer fp_text_lite table_conditional_formatting
#' @importFrom rvg dml
#'
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
