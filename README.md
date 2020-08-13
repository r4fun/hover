
<!-- README.md is generated from README.Rmd. Please edit that file -->

hover
=====

<!-- badges: start -->

[![R build
status](https://github.com/r4fun/hover/workflows/R-CMD-check/badge.svg)](https://github.com/r4fun/hover/actions)
[![Codecov test
coverage](https://codecov.io/gh/r4fun/hover/branch/master/graph/badge.svg)](https://codecov.io/gh/r4fun/hover?branch=master)
<!-- badges: end -->

The goal of hover is to add animations to `shiny::actionButton`,
`shiny::downloadButton`, and `shiny::icon` using
[Hover.css](https://github.com/IanLunn/Hover).

Installation
------------

You can install the development version of hover from GitHub with:

    # install.packages("devtools")
    devtools::install_github("r4fun/hover")

Example
-------

Animate a button and icon by providing the animation name:

    library(shiny)
    library(hover)

    ui <- fluidPage(
      use_hover(),
      hover_action_button(
        inputId = "btn",
        label = "hello hover!",
        icon = icon("refresh"), 
        button_animation = "rotate", 
        icon_animation = "spin"
      ) 
    )

    server <- function(input, output, session) {
      
    }

    shinyApp(ui, server)

The `hover` package essentially takes the `shiny::actionButton` source
code and applies the necessary Hover.css classes to make things move.

Acknowledgements
----------------

This package was built using the following tools:

-   [Hover.css](https://github.com/IanLunn/Hover), the underlying CSS
-   [shiny](https://github.com/rstudio/shiny), the source code for
    `hover_button`

Without these, this package wouldn’t have been possible.
