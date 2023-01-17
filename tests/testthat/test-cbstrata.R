test_that("object is ggplot", {
  expect_s3_class(base_cbstrata, "ggplot")
})

test_that("object plots", {
  expect_no_error(base_cbstrata)
})

test_that("object is a shapefile", {
  expect_s3_class(shape_cbstrata, "sf")
})

test_that("object shape file plots", {
  expect_no_error(plot(shape_cbstrata))
})
