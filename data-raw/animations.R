two_dimensional <- list(
  "grow" = "grow",
  "shrink" = "shrink",
  "pulse" = "pulse",
  "pulse-grow" = "pulse-grow",
  "pulse-shrink" = "pulse-shrink",
  "push" = "push",
  "pop" = "pop",
  "bounce-in" = "bounce-in",
  "bounce-out" = "bounce-out",
  "rotate" = "rotate",
  "grow-rotate" = "grow-rotate",
  "float" = "float",
  "sink" = "sink",
  "bob" = "bob",
  "hang" = "hang",
  "skew" = "skew",
  "skew-forward" = "skew-forward",
  "skew-backward" = "skew-backward",
  "wobble-horizontal" = "wobble-horizontal",
  "wobble-vertical" = "wobble-vertical",
  "wobble-to-bottom-right" = "wobble-to-bottom-right",
  "wobble-to-top-right" = "wobble-to-top-right",
  "wobble-top" = "wobble-top",
  "wobble-bottom" = "wobble-bottom",
  "wobble-skew" = "wobble-skew",
  "buzz" = "buzz",
  "buzz-out" = "buzz-out",
  "forward" = "forward",
  "backward" = "backward"
)

background <- list(
  "fade" = "fade",
  "back-pulse" = "back-pulse",
  "sweep-to-right" = "sweep-to-right",
  "sweep-to-left" = "sweep-to-left",
  "sweep-to-bottom" = "sweep-to-bottom",
  "sweep-to-top" = "sweep-to-top",
  "bounce-to-right" = "bounce-to-right",
  "bounce-to-left" = "bounce-to-left",
  "bounce-to-bottom" = "bounce-to-bottom",
  "bounce-to-top" = "bounce-to-top",
  "radial-out" = "radial-out",
  "radial-in" = "radial-in",
  "rectangle-in" = "rectangle-in",
  "rectangle-out" = "rectangle-out",
  "shutter-in-horizontal" = "shutter-in-horizontal",
  "shutter-out-horizontal" = "shutter-out-horizontal",
  "shutter-in-vertical" = "shutter-in-vertical",
  "shutter-out-vertical" = "shutter-out-vertical"
)

icon <- list(
  "back" = "back",
  "forward" = "forward",
  "down" = "down",
  "up" = "up",
  "spin" = "spin",
  "drop" = "drop",
  "fade" = "fade",
  "float-away" = "float-away",
  "sink-away" = "sink-away",
  "grow" = "grow",
  "shrink" = "shrink",
  "pulse" = "pulse",
  "pulse-grow" = "pulse-grow",
  "pulse-shrink" = "pulse-shrink",
  "push-pop" = "push-pop",
  "bounce" = "bounce",
  "rotate" = "rotate",
  "grow-rotate" = "grow-rotate",
  "float" = "float",
  "sink" = "sink",
  "bob" = "bob",
  "hang" = "hang",
  "wobble-horizontal" = "wobble-horizontal",
  "wobble-vertical" = "wobble-vertical",
  "buzz" = "buzz",
  "buzz-out" = "buzz-out"
)

border <- list(
  "border-fade" = "border-fade",
  "hollow" = "hollow",
  "trim" = "trim",
  "ripple-out" = "ripple-out",
  "ripple-in" = "ripple-in",
  "outline-out" = "outline-out",
  "outline-in" = "outline-in",
  "round-corners" = "round-corners",
  "underline-from-left" = "underline-from-left",
  "underline-from-center" = "underline-from-center",
  "underline-from-right" = "underline-from-right",
  "reveal" = "reveal",
  "underline-reveal" = "underline-reveal",
  "overline-reveal" = "overline-reveal",
  "overline-from-left" = "overline-from-left",
  "overline-from-center" = "overline-from-center",
  "overline-from-right" = "overline-from-right"
)

shadow <- list(
  "shadow" = "shadow",
  "grow-shadow" = "grow-shadow",
  "float-shadow" = "float-shadow",
  "glow" = "glow",
  "shadow-radial" = "shadow-radial",
  "box-shadow-outset" = "box-shadow-outset",
  "box-shadow-inset" = "box-shadow-inset"
)

bubble <- list(
    "bubble-top" = "bubble-top",
    "bubble-right" = "bubble-right",
    "bubble-bottom" = "bubble-bottom",
    "bubble-left" = "bubble-left",
    "bubble-float-top" = "bubble-float-top",
    "bubble-float-right" = "bubble-float-right",
    "bubble-float-bottom" = "bubble-float-bottom",
    "bubble-float-left" = "bubble-float-left"
)

curl <- list(
  "curl-top-left" = "curl-top-left",
  "curl-top-right" = "curl-top-right",
  "curl-bottom-right" = "curl-bottom-right",
  "curl-bottom-left" = "curl-bottom-left"
)

animations <- list(
  two_dimensional = two_dimensional,
  background = background,
  icon = icon,
  border = border,
  shadow = shadow,
  bubble = bubble,
  curl = curl
)

usethis::use_data(animations, overwrite = TRUE)
