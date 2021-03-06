test_that("basic UI actions behave as expected", {
  # suppress test silencing
  withr::local_options(list(usethis.quiet = FALSE))

  verify_output(test_path("test-ui-samples.txt"), {
    ui_line("line")
    ui_todo("to do")
    ui_done("done")
    ui_oops("oops")
    ui_info("info")
    ui_code_block(c("x <- 1", "y <- 2"))

    ui_stop("an error")
    ui_warn("a warning")
  })
})

test_that("ui_silence() suppresses output", {
  # suppress test silencing
  withr::local_options(list(usethis.quiet = FALSE))

  expect_output(ui_silence(ui_line()), NA)
})

test_that("trailing slash behaviour of ui_path()", {
  # target doesn't exist so no empirical evidence that it's a directory
  expect_match(ui_path("abc"), "abc'$")

  # path suggests it's a directory
  expect_match(ui_path("abc/"), "abc/'$")
  expect_match(ui_path("abc//"), "abc/'$")

  # path is known to be a directory
  tmpdir <- fs::file_temp(pattern = "ui_path")
  on.exit(fs::dir_delete(tmpdir))
  fs::dir_create(tmpdir)

  expect_match(ui_path(tmpdir), "/'$")
  expect_match(ui_path(paste0(tmpdir, "/")), "[^/]/'$")
  expect_match(ui_path(paste0(tmpdir, "//")), "[^/]/'$")
})
