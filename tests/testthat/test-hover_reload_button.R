test_that("hover_reload_button has reload functionality", {

  # Create testing input
  test_me <- hover_reload_button("id", "label")

  # Test 1: attribs type is a button
  expect_match(
    ## actual
    test_me$attribs$type,
    ## expect
    "button"
  )

  # Test 2: names on attribs list contains onClick
  expect_match(
    ## actual
    paste(unique(names(test_me$attribs)),
          collapse = ", "),
    ## expect
    "onClick"
  )

  # Test 3: Look for javascript command
  expect_match(
    ## actual
    test_me$attribs$onClick,
    ## expect "location.reload();", escaped characters are present.
    "location\\.reload\\(\\);"
  )
})
