test_that("convolving a flat spectrum preserves its value", {
  srf <- get_srf_sensor('sentinel_2')
  wvl <- spec_prospect_full_range$lambda
  flat <- matrix(1, nrow = length(wvl), ncol = 3)
  out <- apply_sensor_characteristics(wvl = wvl, refl = flat, srf = srf)
  expect_equal(unname(as.matrix(out)), matrix(1, nrow = 10, ncol = 3),
               ignore_attr = TRUE, tolerance = 1e-12)
  expect_false(any(out == 0)) # the silent zero-fill path
  expect_equal(nrow(out), length(srf$spectral_bands))
  })
