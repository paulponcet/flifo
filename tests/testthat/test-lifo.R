context("Test LIFO stacks")

test_that("a new LIFO stack is empty, is a 'stack' object, 
          and is a 'lifo' object", {
  s <- lifo()
  expect_true(is.empty(s))
  expect_true(is.stack(s))
  expect_true(is.lifo(s))
  xcopy <- x <- stats::runif(1)
  push(s, x)
  expect_identical(xcopy, pop(s))
})
