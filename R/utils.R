validateIcon <- function (icon) {
  if (is.null(icon) || identical(icon, character(0))) {
    return(icon)
  }
  else if (inherits(icon, "shiny.tag") && icon$name == "i") {
    return(icon)
  }
  else {
    stop("Invalid icon. Use Shiny's 'icon()' function to generate a valid icon")
  }
}
