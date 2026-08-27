test_that("skyl range between 0 and 1", {
  s <- sin((90 - seq(0, 90)) * pi / 180)
  expect_true(all(0.847 - 1.61 * s + 1.04 * s^2 %>% {.} >= 0))
  expect_true(all(0.847 - 1.61 * s + 1.04 * s^2 %>% {.} <= 1))
})

