## code to prepare `DATASET` dataset goes here
library(sf)
library(ggplot2)

shape_ebstrata <- sf::st_read("data-raw/eb_strata_2")
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
