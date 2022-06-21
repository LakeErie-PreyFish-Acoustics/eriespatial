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

shape_jurisdictions <- sf::st_read("data-raw/us_and_canada")
shape_jurisdictions <- shape_jurisdictions[which(shape_jurisdictions$gu_a3 %in% c("USA", "CAN")),]

bound_box <- c(xmin = -83.6849, ymin = 41.1825, xmax = -78.6861, ymax = 43.0365)

base_jurisditions <- ggplot() +
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
usethis::use_data(base_jurisditions, overwrite = TRUE)

