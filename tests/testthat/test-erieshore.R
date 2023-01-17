test_that("erieshore is ggplot", {
  expect_s3_class(base_erieshore, "ggplot")
})

test_that("base_5mincent_surv plots", {
  expect_no_error(base_erieshore)
})

test_that("erieshore has a shapefile", {
  expect_s3_class(shape_erieshore, "sf")
})

test_that("shape file plots", {
  expect_no_error(plot(shape_erieshore))
})
