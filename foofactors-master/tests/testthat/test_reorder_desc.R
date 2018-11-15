context("Reorder levels descendingly")

test_that("reorder_desc reorders levels of x based on decreasing mean of y", {
  x <- factor(c("a", "b"))
  y <- c(1, 4)
  data <- data.frame(x, y)
  z <- factor(c("b","a"))
  levels(z) <- c("b", "a")
  expect_identical(levels(reorder_desc(x, y)), levels(z))
})

