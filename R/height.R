#' @title 
#' Height of a stack
#' 
#' @description 
#' The function \code{height} returns the height of a stack, 
#' defined as its number of elements. 
#' The function \code{max_height} returns the maximum number 
#' of objects a stack can contains; this number can be changed 
#' with \code{max_height<-}. 
#' 
#' @param .stack
#' A stack. 
#' 
#' @param x
#' A stack. 
#' 
#' @param value
#' numeric. The new maximum height of the stack. 
#' 
#' @return 
#' \code{height} always returns a nonnegative integer. 
#' \code{max_height} returns a (possibly infinite) nonnegative numeric. 
#' 
#' @export
#' 
height <- 
function(.stack)
{
  length(sizes(.stack)) - 1L
}


#' @export
#' @rdname height
#' 
max_height <- 
function(.stack)
{
  attr(.stack, "max_height")
}


#' @export
#' @rdname height
#' 
"max_height<-" <-
function(x, 
         value)
{
  attr(x, "max_height") <- value
  x
}
