#' Function for UNHCR paged report template
#'
#' @param front_img Cover image
#' @param other_css Add extra css
#' @param ... Arguments passed to pagedown::html_paged
#'
#' @return A pagedown report
#' @export
paged_report <- function(front_img = NULL,
                         other_css = NULL,
                         ...) {
  # arguments
  base_css <-
    pkg_resource("css/paged-base.css")
  main_css <-
    pkg_resource("css/paged-report.css")
  back_html <-
    pkg_resource("html/back-cover-paged-report.html")

  # default front-cover
  if (is.null(front_img)) {
    front_img <-
      pkg_resource("img/cover-example.jpg")
  }

  # template
  pagedown::html_paged(
    css = c(base_css, main_css, other_css),
    front_cover = front_img,
    includes = list(after_body = back_html),
    ...
  )
}
