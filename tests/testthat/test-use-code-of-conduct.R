context("use_code_of_conduct")

test_that("use_code_of_conduct() creates promised file", {
  create_local_project()
  use_code_of_conduct()
  expect_proj_file("CODE_OF_CONDUCT.md")
})
