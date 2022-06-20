
<!-- README.md is generated from README.Rmd. Please edit that file -->

# eriespatial

<!-- badges: start -->

![R
badge](https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white)
![develoment
badge](https://img.shields.io/badge/Dev-InProgress-%3CCOLOR%3E.svg)
<!-- badges: end -->

The goal of eriespatial is to provide common Lake Erie shapefiles for R
users. Shapefiles have generally been imported as an `sf` object and
also plotted as a base `ggplot2` object. The `sf` objects follow the
naming convention of `shape_[area]`. The `ggplot2` objects follow the
naming convention of `base_[area]`.

## Installation

You can install the development version of `eriespatial` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("LakeErie-PreyFish-Acoustics/eriespatial")
```

## Example

``` r
library(eriespatial)
library(sf)
#> Linking to GEOS 3.9.1, GDAL 3.2.1, PROJ 7.2.1; sf_use_s2() is TRUE
library(ggplot2)
## view the sf shapefile
data("shape_ebstrata")
shape_ebstrata
#> Simple feature collection with 10 features and 2 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -80.38612 ymin: 42.13901 xmax: -79.05942 ymax: 42.85076
#> Geodetic CRS:  WGS 84
#>    STRATUM area_km2                       geometry
#> 1        1      261 POLYGON ((-80.08151 42.4017...
#> 2        2      501 POLYGON ((-80.34535 42.3561...
#> 3        3      649 POLYGON ((-79.93737 42.6514...
#> 4        4      691 POLYGON ((-79.52855 42.6150...
#> 5        5      579 POLYGON ((-80.07649 42.4037...
#> 6        6      548 POLYGON ((-80.07649 42.4037...
#> 7        7      459 POLYGON ((-79.32086 42.6942...
#> 8        8      375 POLYGON ((-79.52855 42.6150...
#> 9        9      229 POLYGON ((-79.06974 42.7886...
#> 10      10      305 POLYGON ((-79.32086 42.6942...
# plot(shape_ebstrata)
## view ggplot basemap
data("base_ebstrata")
base_ebstrata
```

<img src="man/figures/README-example-1.png" width="60%" />

### Add custom points to base ggplot

``` r
pointdata <-
  data.frame(LON = c(-79.8,-80,-79.2),
             LAT = c(42.3, 42.4, 42.7))
pointdata <- st_as_sf(pointdata, coords = c("LON", "LAT"), crs = 4269)
base_ebstrata + geom_sf(data = pointdata, color = 'red')
```

<img src="man/figures/README-addpoints-1.png" width="60%" />

### Combining multiple layers

``` r
base_erieshore + geom_sf(data = shape_ebstrata, aes(fill = STRATUM))
```

<img src="man/figures/README-multiple layers-1.png" width="60%" />
