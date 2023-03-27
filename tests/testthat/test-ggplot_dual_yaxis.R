test_that("plot works", {
  p = ggplot_dual_yaxis(mtcars, "cyl", "mpg", "disp")
  expect_true(is.ggplot(p))
})
