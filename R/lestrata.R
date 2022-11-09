
#' @title shape_lestrata
#' @name shape_lestrata
#'
#' @description Lake Erie Strata as shapefile
#'
#' @format an sf spatial data frame
#'
#' @examples
#' \dontrun{
#' data("shape_lestrata")
#' class(shape_lestrata)
#' plot(shape_lestrata)
#' }
#' @seealso base_lestrata
#'

data("shape_lestrata")
shape_lestrata


#' base_lestrata
#' @name base_lestrata
#' @description Lake Erie Strata as base ggplot object
#'
#' @format a ggplot object with the strata as a geom_sf() object
#'
#' @examples
#' \dontrun{
#' data("base_lestrata")
#' base_lestrata
#' }
#'
#' @seealso shape_lestrata

data("base_lestrata")
base_lestrata
