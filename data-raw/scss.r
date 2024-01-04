# Generate CSS from SCSS

compile_css <- function(
    scss_file = "",
    css_file = "",
    output_style = "compressed") {
  sass::sass(
    sass::sass_file(
      here::here("data-raw", "scss", scss_file)
    ),
    output = here::here("inst", "resources", "css", css_file),
    options = sass::sass_options(output_style = output_style)
  )
}

# Generate paged_report.css

compile_css(
  scss_file = "paged_report.scss",
  css_file = "paged_report.css"
)


# Generate html_slides.css

compile_css(
  scss_file = "html_slides.scss",
  css_file = "html_slides.css"
)
