
#' @title shape_wbstrata
#' @name shape_wbstrata
#'
#' @description West Basin Strata as shapefile
#'
#' @format an sf spatial data frame
#'
#' @examples
#' \dontrun{
#' data("shape_wbstrata")
#' class(shape_wbstrata)
#' plot(shape_wbstrata)
#' }
#' @seealso base_wbstrata
#'

data("shape_wbstrata")
shape_wbstrata


#' base_wbstrata
#' @name base_wbstrata
#' @description West Basin Strata as base ggplot object
#'
#' @format a ggplot object with the strata as a geom_sf() object
#'
#' @examples
#' \dontrun{
#' data("base_wbstrata")
#' base_wbstrata
#' }
#'
#' @seealso shape_wbstrata

data("base_wbstrata")
base_wbstrata
