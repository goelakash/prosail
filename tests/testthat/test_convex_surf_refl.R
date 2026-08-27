test_that("surf_refl is a convex mixture of rdot and rsot", {
  refl <- prosail()
  for (tts in c(0, 15, 30, 45, 60, 75, 89)) {
    sr <- get_surf_refl(rdot = refl$rdot, rsot = refl$rsot, tts = tts, spec_atm_sensor = spec_atm)$surf_refl
    expect_true(all(sr >= pmin(refl$rdot, refl$rsot) - 1e-12))
    expect_true(all(sr <= pmax(refl$rdot, refl$rsot) + 1e-12))
  }
})
