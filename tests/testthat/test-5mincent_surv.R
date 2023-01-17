test_that("5mincent_surv is ggplot", {
  expect_s3_class(base_5mincent_surv, "ggplot")
})

test_that("base_5mincent_surv plots", {
  expect_no_error(base_5mincent_surv)
})

test_that("5mincent_surv has a shapefile", {
  expect_s3_class(shape_5mincent_surv, "sf")
})

test_that("5mincent_surv shape file plots", {
  expect_no_error(plot(shape_5mincent_surv))
})
