## code to prepare `DATASET` dataset goes here
library(sf)
library(ggplot2)

shape_ebstrata <- sf::st_read("data-raw/eb_strata")
base_ebstrata <- ggplot() +
  geom_sf(data = shape_ebstrata) +
  geom_sf_label(data = shape_ebstrata, aes(label = STRATUM), size = 2) +
  theme_classic() +
  theme(
    legend.position = "None",
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )

usethis::use_data(base_ebstrata, overwrite = TRUE)
usethis::use_data(shape_ebstrata, overwrite = TRUE)


shape_cbstrata <- sf::st_read("data-raw/cb_strata")
base_cbstrata <- ggplot() +
  geom_sf(data = shape_cbstrata) +
  geom_sf_label(data = shape_cbstrata, aes(label = STRATUM), size = 2) +
  theme_classic() +
  theme(
    legend.position = "None",
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )

usethis::use_data(base_cbstrata, overwrite = TRUE)
usethis::use_data(shape_cbstrata, overwrite = TRUE)


shape_wbstrata <- sf::st_read("data-raw/wb_strata")
base_wbstrata <- ggplot() +
  geom_sf(data = shape_wbstrata) +
  geom_sf_label(data = shape_wbstrata, aes(label = STRATUM), size = 2) +
  theme_classic() +
  theme(
    legend.position = "None",
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )

usethis::use_data(base_wbstrata, overwrite = TRUE)
usethis::use_data(shape_wbstrata, overwrite = TRUE)


shape_erieshore <- sf::st_read("data-raw/Lake_Erie_Shoreline")
base_erieshore <- ggplot() +
  geom_sf(data = shape_erieshore) +
  theme_classic() +
  theme(
    legend.position = "None",
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )

usethis::use_data(base_erieshore, overwrite = TRUE)
usethis::use_data(shape_erieshore, overwrite = TRUE)


shape_jurisdictions <- sf::st_read("data-raw/erie_jurisdictions")
bound_box <- c(xmin = -83.6849, ymin = 41.1825, xmax = -78.6861, ymax = 43.0365)
base_jurisdictions <- ggplot() +
  geom_sf(data = shape_jurisdictions) +
  geom_sf(data = shape_erieshore, fill = "#c5dfed") +
  annotate("text", x = -82, y = 41.35, label = "Ohio",
           size = 4, color = "grey40", fontface = "bold")+
  annotate("text", x = -81, y = 42.8, label = "Ontario",
           size = 4, color = "grey40", fontface = "bold")+
  annotate("text", x = -83.5, y = 42.05, label = "Michigan",
           size = 4, color = "grey40", fontface = "bold")+
  annotate("text", x = -79.9, y = 41.8, label = "Pennsylvania",
           size = 4, color = "grey40", fontface = "bold")+
  annotate("text", x = -79, y = 42.2, label = "New York",
           size = 4, color = "grey40", fontface = "bold")+
  theme_classic() +
  scale_x_continuous(limits = c(bound_box["xmin"], bound_box["xmax"]))+
  scale_y_continuous(limits = c(bound_box["ymin"], bound_box["ymax"]))+
  theme(
    legend.position = "None",
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )

usethis::use_data(shape_jurisdictions, overwrite = TRUE)
usethis::use_data(base_jurisdictions, overwrite = TRUE)



shape_5mingrid <- sf::st_read("data-raw/le_5min_grid")
base_5mingrid <- ggplot() +
  geom_sf(data = shape_5mingrid) +
  theme_classic() +
  theme(
    legend.position = "None",
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )

usethis::use_data(base_5mingrid, overwrite = TRUE)
usethis::use_data(shape_5mingrid, overwrite = TRUE)


shape_lestrata <- sf::st_read("data-raw/le_strata")
base_lestrata <- ggplot() +
  geom_sf(data = shape_lestrata) +
  theme_classic() +
  theme(
    legend.position = "None",
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )

usethis::use_data(base_lestrata, overwrite = TRUE)
usethis::use_data(shape_lestrata, overwrite = TRUE)


shape_5mingrid_surv <- sf::st_read("data-raw/le_5min_grid_surv")
base_5mingrid_surv <- ggplot() +
  geom_sf(data = shape_5mingrid_surv) +
  theme_classic() +
  theme(
    legend.position = "None",
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )
  
usethis::use_data(base_5mingrid_surv, overwrite = TRUE)
usethis::use_data(shape_5mingrid_surv, overwrite = TRUE)


shape_5mincent_surv <- sf::st_read("data-raw/le_5min_cent_surv")
base_5mincent_surv <- ggplot() +
  geom_sf(data = shape_5mincent_surv) +
  theme_classic() +
  theme(
    legend.position = "None",
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )

usethis::use_data(base_5mincent_surv, overwrite = TRUE)
usethis::use_data(shape_5mincent_surv, overwrite = TRUE)



