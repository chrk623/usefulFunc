#' solidArrow
#'
#' @param x0,y0 Coordinates of points from which to draw.
#' @param x1,y1 Coordinates of points to which to draw. At least one must the supplied
#' @param angle Angle from the shaft of the arrow to the edge of the arrow head.
#' @param col Color of the arrow.
#' @param ... Other graphical parameters passed into lines.
#' @description
#' Draw a arrow with solid arrow head
#' @examples
#' plot(1)
#' solidArrow(0, 0, 1, 1)
#' @author Charco Hui

solidArrow = function(x0, y0, x1, y1, angle = 30, col = "black", ...){
  constant = 0.025
  angle2 = atan2(y1 - y0, x1 - x0) + pi
  a1 = angle2 + deg2rad(angle)
  a2 = angle2 - deg2rad(angle)
  
  # triangle cords
  x3 = x1 + constant * cos(a1)
  y3 = y1 + constant * sin(a1)
  x4 = x1 + constant * cos(a2)
  y4 = y1 + constant * sin(a2)
  
  lines(c(x0, x1), c(y0, y1), col = col, ...)
  polygon(c(x3, x1, x4), c(y3, y1, y4), col = col, border = col)
}