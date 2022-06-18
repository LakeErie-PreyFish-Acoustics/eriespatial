
#' @title shape_ebstrata
#' @name shape_ebstrata
#'
#' @description East Basin Strata as shapefile
#'
#' @format an sf spatial data frame
#'
#' @examples
#' \dontrun{
#' data("shape_ebstrata")
#' class(shape_ebstrata)
#' plot(shape_ebstrata)
#' }
#' @seealso base_ebstrata
#'

data("shape_ebstrata")
shape_ebstrata


#' base_ebstrata
#' @name base_ebstrata
#' @description East Basin Strata as base ggplot object
#'
#' @format a ggplot object with the strata as a geom_sf() object
#'
#' @examples
#' \dontrun{
#' data("base_ebstrata")
#' base_ebstrata
#' }
#'
#' @seealso shape_ebstrata

data("base_ebstrata")
base_ebstrata
