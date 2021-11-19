
<!-- README.md is generated from README.Rmd. Please edit that file -->

# unhcrdown

<!-- badges: start -->

[![R-CMD-check](https://github.com/vidonne/unhcrdown/workflows/R-CMD-check/badge.svg)](https://github.com/vidonne/unhcrdown/actions)
<!-- badges: end -->

The **unhcrdown** package provides a set of templates following [UNHCR
Brand](https://www.unhcr.org/brand) recommendations. The goal of this
package is to ease and speed up the creation of reports, presentation
and website while promoting the UNHCR visual identity.

## Installation

This package is not on yet on CRAN and to install it, you will need the
remotes package.

``` r
# install.packages("remotes")
remotes::install_github("vidonne/unhcrdown")
```

## Content

A package with all **necessary templates** to quickly create UNHCR
branded reports, presentations and more:

1.  Powerpoint presentation
2.  Xaringan presentation
3.  HTML paged report that can be exported to PDF document
    -   `paged_report`, advanced report template including page cover,
        table of content, back-cover and more.
    -   `paged_simple`, simple document template to create quick
        reports, updates, etc.

**Upcoming templates:**

1.  Word
2.  HTML
3.  [Distill](https://rstudio.github.io/distill/)
4.  [Rolldown](https://github.com/yihui/rolldown)

## UNHCR packages

unhcrthemes is part of **unhcrverse**, a set of packages to ease the
production of statistical evidence and data stories.

-   [unhcrdown](https://github.com/vidonne/unhcrdown): UNHCR templates
    for R Markdown
-   [unhcrdatapackage](https://github.com/Edouard-Legoupil/unhcrdatapackage):
    Use UNHCR Open data
-   [hcrdata](https://github.com/UNHCR-WEB/hcrdata/): API to connect to
    internal data source
-   [HighFrequencyChecks](https://github.com/unhcr/HighFrequencyChecks/):
    Perform High Frequency Check
-   [koboloadeR](https://github.com/unhcr/koboloadeR/): Process data
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
