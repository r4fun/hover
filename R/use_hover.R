#' Use the hover package
#'
#' @description Enables hover by including the CSS file necessary for the
#' animations.
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(hover)
#'
#'   ui <- fluidPage(
#'     use_hover(),
#'     hover_button(
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
use_hover <- function() {
  css <- system.file("extdata", "hover-min.css", package = "hover")
  shiny::includeCSS(css)
}
