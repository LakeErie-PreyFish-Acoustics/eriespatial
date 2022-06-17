## code to prepare `DATASET` dataset goes here
library(sf)
library(ggplot2)

ebstra4 <- sf::st_read("data-raw/eb_strata_4")
ebstrata <- ggplot() +
  geom_sf(data = ebstra4, aes(fill = STRATUM)) +
  theme_classic() +
  theme(legend.position = "None")

usethis::use_data(ebstrata, overwrite = TRUE)
