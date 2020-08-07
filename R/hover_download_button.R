#' Download button with button and icon animations
#'
#' Animate a downloadButton and it's icon using
#' [Hover.css](https://github.com/IanLunn/Hover)
#'
#' @source <https://github.com/IanLunn/Hover>
#'
#' @param outputId The name of the output slot that the downloadHandler is assigned to.
#' @param label The label that should appear on the button.
#' @param button_animation The name of the button animation.
#' @param icon_animation The name of the icon animation.
#' @param class Additional CSS classes to apply to the tag, if any.
#' @param ... Other arguments to pass to the container tag function.
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(hover)
#'
#'   ui <- fluidPage(
#'     use_hover(),
#'     hover_download_button(
#'       outputId = "downloadData",
#'       label = "Download",
#'       button_animation = "rotate",
#'       icon_animation = "spin"
#'     )
#'   )
#'
#'   server <- function(input, output) {
#'     # Our dataset
#'     data <- mtcars
#'
#'     output$downloadData <- downloadHandler(
#'       filename = function() {
#'         paste("data-", Sys.Date(), ".csv", sep="")
#'       },
#'       content = function(file) {
#'         write.csv(data, file)
#'       }
#'     )
#'   }
#'
#'   shinyApp(ui, server)
#' }
#' @md
#' @export
hover_download_button <- function(outputId, label = "Download", button_animation = NULL,
                           icon_animation = NULL, class = NULL, ...) {
  aTag <- shiny::tags$a(
    id = outputId,
    class = paste('btn btn-default shiny-download-link', class),
    class = if (!is.null(button_animation)) paste0("hvr-", button_animation),
    class = if (!is.null(icon_animation)) paste0("hvr-icon-", icon_animation),
    href = '',
    target = '_blank',
    download = NA,
    htmltools::tagAppendAttributes(shiny::icon("download"), class = "hvr-icon"),
    label,
    ...
  )
}
