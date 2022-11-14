
#' @title shape_5mincent_surv
#' @name shape_5mincent_surv
#'
#' @description Lake Erie 5-minute grid centroids within survey area as shapefile
#'
#' @format an sf spatial data frame
#'
#' @examples
#' \dontrun{
#' data("shape_5mincent_surv")
#' class(shape_5mincent_surv)
#' plot(shape_5mincent_surv)
#' }
#' @seealso base_5mincent_surv
#'

data("shape_5mincent_surv")
shape_5mincent_surv


#' base_5mincent_surv
#' @name base_5mincent_surv
#' @description Lake Erie 5-minute grid centroids within survey area as base ggplot object
#'
#' @format a ggplot object with the strata as a geom_sf() object
#'
#' @examples
#' \dontrun{
#' data("base_5mincent_surv")
#' base_5mincent_surv
#' }
#'
#' @seealso shape_5mincent_surv

data("base_5mincent_surv")
base_5mincent_surv

