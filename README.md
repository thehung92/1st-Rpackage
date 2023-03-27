
<!-- README.md is generated from README.Rmd. Please edit that file -->

# miscRpackage

<!-- badges: start -->
<!-- badges: end -->

The goal of miscRpackage is to save miscellaneous function that I find
useful

## Installation

You can install the development version of miscRpackage from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("thehung92/miscRpackage")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(miscRpackage)
#> Loading required package: tidyverse
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ dplyr     1.1.1     ✔ readr     2.1.4
#> ✔ forcats   1.0.0     ✔ stringr   1.5.0
#> ✔ ggplot2   3.4.1     ✔ tibble    3.2.1
#> ✔ lubridate 1.9.2     ✔ tidyr     1.3.0
#> ✔ purrr     1.0.1     
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
## basic example code
ggplot_dual_yaxis(mtcars, "cyl", "mpg", "disp")
```

<img src="man/figures/README-example-1.png" width="100%" />
