
<!-- README.md is generated from README.Rmd. Please edit that file -->

# unhcrdown <a href="https://github.com/vidonne/unhcrdown"><img src='man/figures/unhcrdown_sticker.png' align="right" width="140" /></a>

<!-- badges: start -->

[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![R-CMD-check](https://github.com/unhcr-dataviz/unhcrdown/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/unhcr-dataviz/unhcrdown/actions/workflows/R-CMD-check.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/unhcrdown)](https://CRAN.R-project.org/package=unhcrdown)
<!-- badges: end -->

## Overview

The **`unhcrdown`** package provides a set of templates following [UNHCR
Brand](https://www.unhcr.org/brand) recommendations. The goal of this
package is to ease and speed up the creation of reports, presentation
and website while promoting the UNHCR visual identity.

## Installation

This package is not on yet on CRAN and to install it, you will need the
`{pak}` package.

``` r
# If pak is not yet installed, uncomment the following line:
# install.packages("pak")

pak::pkg_install("unhcr-dataviz/unhcrdown")
```

## Content

A package with all **necessary templates** to quickly create [UNHCR
branded](https://www.unhcr.org/brand/templates-tools/) reports,
presentations and more:

1.  Microsoft **Word document** (based on `officedown::rdocx_document`)
2.  HTML to **PDF paged reports** (based on `pagedown::html_paged`)
      - `unhcrdown::paged_report`, advanced report template including
        page cover, table of content, back-cover and more.
      - `unhcrdown::paged_simple`, simple document template to create
        quick reports, updates, etc.
3.  Microsoft **PowerPoint presentation** (based on
    `officedown::rpptx_document`)
4.  **HTML slides** (based on `xaringan::moon_reader`)

**Work in progress:**

1.  HTML document (based on `rmarkdown::html_document`)
2.  [Distill](https://rstudio.github.io/distill/)
3.  [Rolldown](https://github.com/yihui/rolldown)

## Usage

The `unhcrdown` templates are designed for R Markdown projects, simply
use the `docx_simple`, `paged_report` or `paged_simple`, `pptx_slides`,
or `html_slides` engine in your R Markdown header. For example:

``` yaml
---
title: "UNHCR Branded Rmarkdown"
author: First Last Name
date: "23 August, 2023"
output: unhcrdown::paged_report
---
```

### Templates

You can also open a `unhcrdown` template using **RStudio**.

**Step 1:** Click the “File” menu then “New File” and choose “R
Markdown”.

<img src="man/figures/new_rmd.png" width="60%" />

**Step 2:** In the “From Template” tab, choose one of the built-in
templates.

<img src="man/figures/new_template.png" width="60%" />

## UNHCR packages

unhcrthemes is part of **unhcrverse**, a set of packages to ease the
production of statistical evidence and data stories.

  - [unhcrdown](https://github.com/vidonne/unhcrdown): UNHCR templates
    for R Markdown
  - [unhcrdatapackage](https://github.com/Edouard-Legoupil/unhcrdatapackage):
    Use UNHCR Open data
  - [hcrdata](https://github.com/UNHCR-WEB/hcrdata/): API to connect to
    internal data source
  - [HighFrequencyChecks](https://github.com/unhcr/HighFrequencyChecks/):
    Perform High Frequency Check
  - [koboloadeR](https://github.com/unhcr/koboloadeR/): Process data
    crunching for survey dataset

You can install them all with the following:

``` r
## unhcrdown
remotes::install_github("vidonne/unhcrdown")
## unhcrdatapackage
remotes::install_github('unhcr/unhcrdatapackage')
## hcrdata
remotes::install_github('unhcr-web/hcrdata')
## HighFrequencyChecks
remotes::install_github('unhcr/HighFrequencyChecks')
## koboloadeR
remotes::install_github('unhcr/koboloadeR')
```

## Getting help

Please report any issues or bugs on
[GitHub](https://github.com/unhcr-dataviz/unhcrdown/issues), try to
include a minimal reproducible example to help us understand.

## Code of Conduct

Please note that the mynewpack project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
