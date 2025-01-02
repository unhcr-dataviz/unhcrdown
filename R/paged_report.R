#' Function for UNHCR paged report template
#'
#' @param front_img Cover image
#' @param img_to_dark Darken cover image
#' @param other_css Add extra css
#' @param toc Table of content
#' @param toc_depth Table of content depth
#' @param number_sections Number section headings
#' @param ... Arguments passed to pagedown::html_paged
#'
#' @return An R Markdown output format.
#' @export
paged_report <- function(front_img = NULL,
                         img_to_dark = FALSE,
                         other_css = NULL,
                         toc = TRUE,
                         toc_depth = 2,
                         number_sections = FALSE,
                         ...) {
  # css file
  paged_report_css <- pkg_resource("css/paged_report.css")

  # html back-cover
  back_html <- pkg_resource("html/back_paged_report.html")

  # default front-cover
  if (is.null(front_img)) {
    front_img <-
      pkg_resource("img/cover-example.jpg")
  }

  # darken img
  # idea from https://github.com/rfortherestofus/pagedreport
  if (img_to_dark == TRUE) {
    # opacity
    front_img_init <-
      magick::image_read(front_img)
    front_img_ok <-
      magick::image_colorize(front_img_init, opacity = 50, color = "black")

    # path to image
    front_img <- paste0(tempfile("front_img"), ".jpg")
    magick::image_write(front_img_ok, front_img, format = "jpg")
  }

  # template
  pagedown::html_paged(
    css = c(paged_report_css, other_css),
    front_cover = front_img,
    includes = list(after_body = back_html),
    toc = toc,
    toc_depth = toc_depth,
    number_sections = number_sections,
    ...
  )
}
