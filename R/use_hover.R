#' Use the hover package
#'
#' @description Enables hover by including the CSS file necessary for the
#' animations.
#' @details By default, shiny buttons don't 'pop back'. This is for accessibility
#' reasons. For more information see here: https://github.com/rstudio/shiny/issues/2500.
#' @param popback If true, buttons 'pop back', contrary to default shiny behavior.
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(hover)
#'
#'   ui <- fluidPage(
#'     use_hover(),
#'     hover_action_button(
#'       inputId = "btn",
#'       label = "hello hover!",
#'       icon = icon("refresh"),
#'       button_animation = "rotate",
#'       icon_animation = "spin"
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
#' @export
#' @export
use_hover <- function(popback = FALSE) {
  css <- system.file("extdata", "hover-min.css", package = "hover")
  js <- system.file("extdata", "pop-back.js", package = "hover")

  if (popback) {
    list(
      shiny::includeCSS(css),
      shiny::includeScript(js)
    )
  } else {
    shiny::includeCSS(css)
  }
}
