test_that("object is ggplot", {
  expect_s3_class(base_5mingrid, "ggplot")
})

test_that("object plots", {
  expect_no_error(base_5mingrid)
})

test_that("object is a shapefile", {
  expect_s3_class(shape_5mingrid, "sf")
})

test_that("object shape file plots", {
  expect_no_error(plot(shape_5mingrid))
})
