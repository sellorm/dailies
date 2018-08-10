# dailies

The goal of dailies is to provide some simple tools for working with the RStudio daily builds.

## Installation

You can install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("sellorm/dailies")
```

## Example

The most common thing you might want to do is get the download URL for the latest daily version:

``` r
dailies::latest("ubuntu", type = "desktop")
```

Open the RStudio Daily build website:

``` r
dailies::website()
```
