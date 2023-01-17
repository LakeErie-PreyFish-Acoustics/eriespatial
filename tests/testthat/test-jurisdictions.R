test_that("object is ggplot", {
  expect_s3_class(base_jurisdictions, "ggplot")
})

test_that("object plots", {
  expect_no_error(base_jurisdictions)
})

test_that("object is a shapefile", {
  expect_s3_class(shape_jurisdictions, "sf")
})

test_that("object shape file plots", {
  expect_no_error(plot(shape_jurisdictions))
})
