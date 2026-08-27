test_that("every advertised sensor resolves to a usable SRF", {
  for (s in srf_availability()) {
    srf <- get_srf_sensor(sensor_name = s, save_srf = FALSE)
    expect_false(is.null(srf), info = s)
    expect_equal(nrow(srf$spectral_response), length(srf$spectral_bands), info = s)
    expect_equal(ncol(srf$spectral_response), length(srf$original_bands), info = s)
  }
})
