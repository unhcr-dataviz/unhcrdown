
<!-- README.md is generated from README.Rmd. Please edit that file -->

# unhcrdown <a href="https://github.com/unhcr-dataviz/unhcrdown"><img src='man/figures/unhcrdown_sticker.png' align="right" width="140" alt="unhcrdown package hex sticker" /></a>

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check](https://github.com/unhcr-dataviz/unhcrdown/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/unhcr-dataviz/unhcrdown/actions/workflows/R-CMD-check.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/unhcrdown)](https://CRAN.R-project.org/package=unhcrdown)
<!-- badges: end -->

Streamline your document creation process with the `{unhcrdown}` R
package. It provides a comprehensive set of templates designed to align
your reports and presentations with **UNHCR’s brand guidelines**. This
package offers ready-to-use R Markdown templates for various document
types, ensuring consistent UNHCR visual identity across your
communications.

## Features

- A collection of professional templates following UNHCR brand
  guidelines
- Ready-to-use formats for reports, presentations, and websites
- Easy-to-use functions that work seamlessly with R Markdown
- Consistent styling across all document types

## Installation

Get started by installing the `{unhcrdown}` package from CRAN with:

``` r
install.packages("unhcrdown")
```

Or retrieve the development version from Github using the `{pak}`
package:

``` r
# If pak is not yet installed, uncomment the following line:
# install.packages("pak")

pak::pkg_install("unhcr-dataviz/unhcrdown")
```

## Usage

The `{unhcrdown}` templates are designed for R Markdown projects, any of
the available format can simply be added to `output` parameter of the R
Markdown `yaml` header. For example:

``` yaml
---
title: "UNHCR Branded Report"
author: "First Last Name"
date: "`r Sys.Date()`"
output: unhcrdown::paged_report
---
```

### Available Formats

- **PDF Reports**: Two HTML to PDF options:

  ``` yaml
  output: unhcrdown::paged_report  # Full template with cover
  # or
  output: unhcrdown::paged_simple  # Streamlined version
  ```

- **Word Documents**: Professional reports using
  `officedown::rdocx_document`

  ``` yaml
  output: unhcrdown::docx_simple
  ```

- **PowerPoint**: Presentation slides

  ``` yaml
  output: unhcrdown::pptx_slides
  ```

- **HTML Slides**: Web presentations

  ``` yaml
  output: unhcrdown::html_slides
  ```

- **HTML Page**: Web based documents

  ``` yaml
  output: unhcrdown::html_page
  ```

### RStudio Integration

Create new documents directly from RStudio:

1.  File → New File → R Markdown
2.  Select “From Template”
3.  Choose any `{unhcrdown}` template

## Additional UNHCR Tools

- [**unhcrthemes**](https://github.com/unhcr-dataviz/unhcrthemes): UNHCR
  branded ggplot2 theme and color palettes
  <!-- * [**unhcrdown**](https://github.com/unhcr-dataviz/unhcrdown): UNHCR templates for R Markdown -->
- [**refugees**](https://github.com/PopulationStatistics/refugees):
  Access to [UNHCR Refugee Data
  Finder](https://www.unhcr.org/refugee-statistics) API
- [**quarto-html-unhcr**](https://github.com/unhcr-dataviz/quarto-html-unhcr):
  Quarto extension for UNHCR branded HTML documents
- [**quarto-revealjs-unhcr**](https://github.com/unhcr-dataviz/quarto-revealjs-unhcr):
  Quarto extension for UNHCR branded presentations
- [**Data Visualization Platform**](https://dataviz.unhcr.org/): UNHCR’s
  data visualization guidelines and tools

## Acknowledgements

We extend our gratitude to the creators of the
[`pagedown`](https://github.com/rstudio/pagedown) package that
influenced the development of `unhcrdown`.

## Contribution and Code of Conduct

Contributions to `{unhcrdown}` are highly valued. To ensure a welcoming
and inclusive community, we follow our [Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
If you have suggestions, uncover bugs, or envision new features, kindly
submit an [issue on
GitHub](https://github.com/unhcr-dataviz/unhcrdown/issues).

## License

This package is distributed under the [MIT
License](https://github.com/unhcr-dataviz/unhcrdown/blob/master/LICENSE.md).
