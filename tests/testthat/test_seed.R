# test_that("LUT input generation does not clobber global RNG state", {
#   set.seed(42)
#   before <- .Random.seed
#   invisible(get_input_prosail(atbd = TRUE, nb_samples = 10))
#   expect_identical(.Random.seed, before) # currently fails
# })
