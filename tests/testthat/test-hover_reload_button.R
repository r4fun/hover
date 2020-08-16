test_that("hover_reload_button has expected structure", {

  # Create testing input
  test_me <- hover_reload_button("id", "label")

  # Test 1: attribs type is a button
  expect_equal(
    ## actual
    test_me$attribs$type,
    ## expect
    "button"
  )

  # Test 2: names on attribs list contains onClick
  expect_true(any("onClick" %in% names(test_me$attribs)))

  # Test 3: Look for javascript command
  expect_equal(
    ## actual
    test_me$attribs$onClick,
    ## expect
    "location.reload();"
  )
})
