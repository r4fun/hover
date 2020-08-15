#' Reload button with button and icon animations
#'
#' Animate a reload button and it's icon using
#' [Hover.css](https://github.com/IanLunn/Hover)
#' Note that a reload button is just a shiny::actionButton
#' with onClick behavior to reload or refresh a web browser.
#'
#' @source <https://github.com/IanLunn/Hover>
#'
#' @param inputId The input slot that will be used to access the value.
#' @param label The contents of the button or link–usually a text label, but you could also use any other HTML, like an image.
#' @param icon An optional icon() to appear on the button.
#' @param button_animation The name of the button animation.
#' @param icon_animation The name of the icon animation.
#' @param width The width of the input, e.g. '400px', or '100%'; see validateCssUnit().
#' @param ... Named attributes to be applied to the button or link.
#' @md
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(hover)
#'
#'   ui <- fluidPage(
#'     use_hover(),
#'     hover_reload_button(
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
hover_reload_button <- function(inputId, label, icon = NULL, button_animation = NULL, icon_animation = NULL, width = NULL, ...) {
  value <- shiny::restoreInput(id = inputId, default = NULL)

  if (!is.null(icon)) {
    icon <- validateIcon(htmltools::tagAppendAttributes(icon, class = "hvr-icon"))
  }

  shiny::tags$button(
    id = inputId,
    style = if (!is.null(width)) paste0("width: ", shiny::validateCssUnit(width), ";"),
    type = "button",
    class = "btn btn-default reload-button",
    class = if (!is.null(button_animation)) paste0("hvr-", button_animation),
    class = if (!is.null(icon_animation)) paste0("hvr-icon-", icon_animation),
    `data-val` = value,
    list(icon, label),
    onClick = "location.reload();",
    ...
  )
}
