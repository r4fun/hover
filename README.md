
<!-- README.md is generated from README.Rmd. Please edit that file -->

hover
=====

<!-- badges: start -->

[![R build
status](https://github.com/r4fun/hover/workflows/R-CMD-check/badge.svg)](https://github.com/r4fun/hover/actions)
[![Codecov test
coverage](https://codecov.io/gh/r4fun/hover/branch/master/graph/badge.svg)](https://codecov.io/gh/r4fun/hover?branch=master)
[![CRAN
status](https://www.r-pkg.org/badges/version/hover)](https://CRAN.R-project.org/package=hover)
<!-- badges: end -->

The goal of hover is to add animations to `shiny::actionButton`,
`shiny::downloadButton`, and `shiny::icon` using
[Hover.css](https://github.com/IanLunn/Hover). Additionally, a button to
refresh web browser is also included.

Installation
------------

Install the released version of `hover` from CRAN:

    install.packages("hover")

Or install the development version from GitHub with:

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
