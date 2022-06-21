
#' @title shape_jurisdictions
#' @name shape_jurisdictions
#'
#' @description Lake Erie states and province as shapefile
#'
#' @format an sf spatial data frame
#'
#' @examples
#' \dontrun{
#' data("shape_jurisdictions")
#' class(shape_jurisdictions)
#' plot(shape_jurisdictions)
#' }
#' @seealso shape_jurisdictions
#'

data("shape_jurisdictions")
shape_jurisdictions


#' base_jurisdictions
#' @name base_jurisdictions
#' @description Lake Erie jurisdictions as base ggplot object
#'
#' @format a ggplot object with the states and province as a geom_sf() object
#'
#' @examples
#' \dontrun{
#' data("base_jurisdictions")
#' base_jurisdictions
#' }
#'
#' @seealso shape_erieshore

data("base_jurisdictions")
base_jurisdictions
