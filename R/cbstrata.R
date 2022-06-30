
#' @title shape_cbstrata
#' @name shape_cbstrata
#'
#' @description Central Basin Strata as shapefile
#'
#' @format an sf spatial data frame
#'
#' @examples
#' \dontrun{
#' data("shape_cbstrata")
#' class(shape_cbstrata)
#' plot(shape_cbstrata)
#' }
#' @seealso base_cbstrata
#'

data("shape_cbstrata")
shape_cbstrata


#' base_cbstrata
#' @name base_cbstrata
#' @description Central Basin Strata as base ggplot object
#'
#' @format a ggplot object with the strata as a geom_sf() object
#'
#' @examples
#' \dontrun{
#' data("base_cbstrata")
#' base_cbstrata
#' }
#'
#' @seealso shape_cbstrata

data("base_cbstrata")
base_cbstrata
