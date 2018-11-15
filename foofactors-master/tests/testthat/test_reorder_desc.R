context("Reorder levels descendingly")

test_that("reorder_desc reorders levels of x based on decreasing mean of y", {
  x <- factor(c("a", "b"))
  y <- c(1, 4)
  data <- data.frame(x, y)
  z <- factor(c("b","a"))
  levels(z) <- c("b", "a")
  expect_identical(levels(reorder_desc(x, y)), levels(z))
})

test_that("reorder_desc calculates mean correctly", {
  f <- factor(c("a", "a", "a", "b", "b", "b"))
  g <- c(1,2,3,4,5,6)
  data_2 <- data.frame(f, g)
  h <- data_2 %>% dplyr::group_by(f) %>% dplyr::summarize(mean = mean(g))
  m <- reorder_desc(f, g)

  expect_identical(-h$mean[1], attr(m, "scores")[[1]])
  expect_identical(-h$mean[2], attr(m, "scores")[[2]])
})

test_that("reorder_desc calculates other stat correctly", {
  l <- factor(c("a", "a", "a", "b", "b", "b"))
  k <- c(1,6,3,9,5,6)
  data_2 <- data.frame(l, k)
  o <- data_2 %>% dplyr::group_by(l) %>% dplyr::summarize(median = median(k))
  p <- reorder_desc(l, k, median)
  
  expect_identical(-o$median[1], attr(p, "scores")[[1]])
  expect_identical(-o$median[2], attr(p, "scores")[[2]])
})