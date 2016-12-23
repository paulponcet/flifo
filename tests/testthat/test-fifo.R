context("Test FIFO stacks")

test_that("a new FIFO stack is empty, is a 'stack' object, 
          and is a 'fifo' object", {
  s <- fifo()
  expect_true(is.empty(s))
  expect_true(is.stack(s))
  expect_true(is.fifo(s))
  xcopy <- x <- stats::runif(1)
  push(s, x)
  expect_identical(xcopy, pop(s))
})
