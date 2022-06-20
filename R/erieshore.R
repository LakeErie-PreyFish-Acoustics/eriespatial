
#' @title shape_erieshore
#' @name shape_erieshore
#'
#' @description Lake Erie shoreline as shapefile
#'
#' @format an sf spatial data frame
#'
#' @examples
#' \dontrun{
#' data("shape_erieshore")
#' class(shape_erieshore)
#' plot(shape_erieshore)
#' }
#' @seealso base_erieshore
#'

data("shape_erieshore")
shape_erieshore


#' base_ebstrata
#' @name base_erieshore
#' @description Lake Erie shoreline as base ggplot object
#'
#' @format a ggplot object with the strata as a geom_sf() object
#'
#' @examples
#' \dontrun{
#' data("base_erieshore")
#' base_erieshore
#' }
#'
#' @seealso shape_erieshore

data("base_erieshore")
base_erieshore
