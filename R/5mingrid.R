
#' @title shape_5mingrid
#' @name shape_5mingrid
#'
#' @description Lake Erie 5-minute grid as shapefile
#'
#' @format an sf spatial data frame
#'
#' @examples
#' \dontrun{
#' data("shape_5mingrid")
#' class(shape_5mingrid)
#' plot(shape_5mingrid)
#' }
#' @seealso base_5mingrid
#'

data("shape_5mingrid")
shape_5mingrid


#' base_5mingrid
#' @name base_5mingrid
#' @description Lake Erie 5-minute grid as base ggplot object
#'
#' @format a ggplot object with the strata as a geom_sf() object
#'
#' @examples
#' \dontrun{
#' data("base_5mingrid")
#' base_5mingrid
#' }
#'
#' @seealso shape_5mingrid

data("base_5mingrid")
base_5mingrid

