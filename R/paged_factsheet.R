# usethis::use_rmarkdown_template(
#   template_name = "paged_factsheet",
#   template_dir = NULL,
#   template_description = "Factsheet Template",
#   template_create_dir = TRUE
# )

#' Function for UNHCR paged simple template
#'
#' @param back_html Back-cover HTML including contact information
#' @param other_css Add extra css
#' @param number_sections Number section headings
#' @param ... Arguments passed to pagedown::html_paged
#'
#' @importFrom unhcrdesign use_unhcr_logo
#' @importFrom pagedown html_paged
#'
#' @return A pagedown report
#' @export
paged_factsheet <- function(back_html = TRUE,
                         other_css = NULL,
                         number_sections = FALSE,
                         ...) {



  # base css files
  base_css <- unhcrdesign::use_unhcr_css(c("reset", "color_variables", "fonts"))

  # logo css file
  logo_var <- paste0("  --unhcr-logoblue: url(\"", unhcrdesign::use_unhcr_logo(logo = "blue", data_uri = TRUE), "\");")
  logo_css <- tempfile(fileext = ".css")
  writeLines(c(":root {", logo_var, "}"), con = logo_css)

  file.append(base_css, logo_css)

  # icon css files
  icon_css <- pkg_resource("css/fontawesome_all.css")

  # specific css files
  base_css <- pkg_resource("css/base.css")
  paged_base_css <- pkg_resource("css/paged_base.css")
  factsheet_css <- pkg_resource("css/factsheet.css")

  # html back-cover
  if (back_html) {
    back_html <-
      pkg_resource("html/back_paged_simple.html")
  } else {
    back_html <- NULL
  }

  # template
  pagedown::html_paged(
    css = c(base_css, icon_css, base_css,
            paged_base_css,
            factsheet_css, other_css),
    includes = list(after_body = back_html),
    number_sections = number_sections,
    ...)
}
