## code to prepare `DATASET` dataset goes here
library(sf)
library(ggplot2)

shape_ebstrata <- sf::st_read("data-raw/eb_strata_4")
base_ebstrata <- ggplot() +
  geom_sf(data = shape_ebstrata) +
  geom_sf_label(data = shape_ebstrata, aes(label = STRATUM), size = 2) +
  theme_classic() +
  theme(legend.position = "None",
        axis.title.x=element_blank(),
        axis.title.y=element_blank())

usethis::use_data(base_ebstrata, overwrite = TRUE)
usethis::use_data(shape_ebstrata, overwrite = TRUE)
