# function to read and create base64 logo
use_unhcr_logo <- function(logo = c("blue", "white", "black"),
                           data_uri = FALSE) {
  logo <- match.arg(logo)
  logo <- paste0("logo-unhcr-", logo, ".svg")
  res <- system.file(paste0("resources/img/", logo), package = "unhcrdown")
  if (data_uri) {
    res <- knitr::image_uri(res)
  }
  res
}

# Create list of logos
unhcrlogos <- list(
  logoblue = use_unhcr_logo(logo = "blue", data_uri = TRUE),
  logowhite = use_unhcr_logo(logo = "white", data_uri = TRUE),
  logoblack = use_unhcr_logo(logo = "black", data_uri = TRUE)
)

# Generate logo_variables.css
css_logos <- paste0("  --unhcr-", names(unhcrlogos), ": '", unname(unlist(unhcrlogos)), "';")

warning <- "/*! This file is autogenerated in data-raw/logo.R Do not manually edit */"

fileConn <- file("inst/resources/css/logo_variables.css")
writeLines(c(warning, ":root {", css_logos, "}"), fileConn)
close(fileConn)

# Generate SCSS logo variables
scss_logos <- paste0("$unhcr-", names(unhcrlogos), ": '", unname(unlist(unhcrlogos)), "';")

warning <- "// This file is autogenerated in data-raw/logo.R. Do not manually edit"

fileConn <- file("data-raw/scss/_logo.scss")
writeLines(c(warning, scss_logos), fileConn)
close(fileConn)
