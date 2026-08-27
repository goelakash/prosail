test_that("fourSAIL degrades to soil reflectance at lai = 0", {
  lop   <- list(reflectance = rep(0.4, 10), transmittance = rep(0.4, 10))
  rsoil <- rep(0.2, 10)
  res   <- fourSAIL(lop = lop, lai = 0, rsoil = rsoil)
  expect_false(any(is.nan(unlist(res))))
  expect_equal(res$rsot, rsoil)
  expect_equal(res$rddt, rsoil)
  expect_equal(res$fcover, 0)
  # same contract as 4SAIL2, which already handles lai == 0
  expect_equal(fourSAIL2(lop, lop, lai = 0, rsoil = rsoil)$rsot, rsoil)
})
