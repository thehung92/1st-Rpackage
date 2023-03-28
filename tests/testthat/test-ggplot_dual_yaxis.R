test_that("plot works", {
  p = ggplot_dual_yaxis(mtcars, "cyl", "mpg", "disp")
  r = any(class(p) == "ggplot")
  expect_true(r)
})
