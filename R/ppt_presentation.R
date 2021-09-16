#' Convert to UNHCR branded Powerpoint presentation
#'
#' Format for converting from R Markdown to an UNHCR branded Powerpoint presentation
#'
#' @rdname ppt_presentation
#'
#' @importFrom rmarkdown powerpoint_presentation
#'
#' @param ... extra parameters to pass to `rmarkdown::powerpoint_presentation`
#'
#' @export
ppt_presentation <- function(...) {

  ref_doc <- pkg_resource("ppt/ppt_reference.pptx")

  rmarkdown::powerpoint_presentation(
    reference_doc = ref_doc,
    ...
  )
}

#' @rdname ppt_presentation
#' @noRd
pptx_presentation <- ppt_presentation
