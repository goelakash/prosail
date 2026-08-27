test_that("soil_ID indexing stays inside the soil table", {
  input <- get_input_prosail(atbd = TRUE, nb_samples = 20)
  expect_true(all(input$soil_ID + 1 <= ncol(spec_soil_atbd_v2)))
  expect_true(all(input$soil_ID >= 1))
})
