test_that("lazy duckplyr frames will collect", {
  tbl <- duckdb_tibble(a = 1, .lazy = TRUE)
  expect_identical(
    collect(tbl),
    tibble(a = 1)
  )
})

test_that("eager duckplyr frames are converted to data frames", {
  tbl <- duckdb_tibble(a = 1)
  expect_identical(
    as.data.frame(tbl),
    data.frame(a = 1)
  )
})

test_that("lazy duckplyr frames are converted to data frames", {
  tbl <- duckdb_tibble(a = 1, .lazy = TRUE)
  expect_identical(
    as.data.frame(tbl),
    data.frame(a = 1)
  )
})

test_that("eager duckplyr frames are converted to tibbles", {
  tbl <- duckdb_tibble(a = 1)
  expect_identical(
    as_tibble(tbl),
    tibble(a = 1)
  )
})

test_that("lazy duckplyr frames are converted to tibbles", {
  tbl <- duckdb_tibble(a = 1, .lazy = TRUE)
  expect_identical(
    as_tibble(tbl),
    tibble(a = 1)
  )
})
