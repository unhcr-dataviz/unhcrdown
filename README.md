
<!-- README.md is generated from README.Rmd. Please edit that file -->

# unhcrdown <a href="https://github.com/unhcr-dataviz/unhcrdown"><img src='man/figures/unhcrdown_sticker.png' align="right" width="140" alt="unhcrdown package hex sticker" /></a>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/unhcr-dataviz/unhcrdown/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/unhcr-dataviz/unhcrdown/actions/workflows/R-CMD-check.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/unhcrdown)](https://CRAN.R-project.org/package=unhcrdown)
<!-- badges: end -->

Streamline your document creation process with the `{unhcrdown}` R
package. It provides a comprehensive set of templates designed to align
your reports and presentations with [UNHCR’s brand
guidelines](https://www.unhcr.org/brand). This package offers
ready-to-use R Markdown templates for various document types, ensuring
consistent UNHCR visual identity across your communications.

## Features

- A collection of professional templates following UNHCR brand
  guidelines
- Ready-to-use formats for reports, presentations, and websites
- Easy-to-use functions that work seamlessly with R Markdown
- Consistent styling across all document types

## Installation

Get started by installing the development version from GitHub with:

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
3.  Choose any `unhcrdown` template

## Additional UNHCR Tools

- `{unhcrthemes}`: UNHCR branded ggplot2 themes and palettes -
  [GitHub](https://github.com/unhcr-dataviz/unhcrthemes)
- `{refugees}`: Access to [UNHCR Refugee Population Statistics
  Database](https://www.unhcr.org/refugee-statistics/download) -
  [GitHub](https://github.com/PopulationStatistics/refugees)
- `quarto-revealjs-unhcr`: UNHCR branded Quarto presentations -
  [GitHub](https://github.com/unhcr-dataviz/quarto-revealjs-unhcr)
- `quarto-html-unhcr`: UNHCR branded Quarto HTML documents -
  [GitHub](https://github.com/unhcr-dataviz/quarto-html-unhcr)
- [Data Visualization Platform](https://dataviz.unhcr.org/): UNHCR’s
  comprehensive data visualization guidance

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
