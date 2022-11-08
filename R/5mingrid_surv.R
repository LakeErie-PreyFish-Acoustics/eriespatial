
#' @title shape_5mingrid_surv
#' @name shape_5mingrid_surv
#'
#' @description Lake Erie 5-minute grid within survey area as shapefile
#'
#' @format an sf spatial data frame
#'
#' @examples
#' \dontrun{
#' data("shape_5mingrid_surv")
#' class(shape_5mingrid_surv)
#' plot(shape_5mingrid_surv)
#' }
#' @seealso base_5mingrid_surv
#'

data("shape_5mingrid_surv")
shape_5mingrid_surv


#' base_5mingrid_surv
#' @name base_5mingrid_surv
#' @description Lake Erie 5-minute grid within survey area as base ggplot object
#'
#' @format a ggplot object with the strata as a geom_sf() object
#'
#' @examples
#' \dontrun{
#' data("base_5mingrid_surv")
#' base_5mingrid_surv
#' }
#'
#' @seealso shape_5mingrid_surv

data("base_5mingrid_surv")
base_5mingrid_surv

