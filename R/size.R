#' @title 
#' Size of a stack
#' 
#' @description 
#' The function \code{size} returns the size of a stack. 
#' The function \code{max_size} returns the maximum number 
#' of objects a stack can contains; this number can be changed 
#' with \code{max_size<-}. 
#' 
#' @param .stack
#' A stack. 
#' 
#' @param x
#' A stack. 
#' 
#' @param value
#' numeric. The new maximum size of the stack. 
#' 
#' @return 
#' \code{size} always returns a nonnegative integer. 
#' \code{max_size} returns a (possibly infinite) nonnegative numeric. 
#' 
#' @export
#' 
size <- 
function(.stack)
{
  attr(.stack, "size")
}


# not exported, since the size should be modified directly
"size<-" <-
function(x, 
         value)
{
  attr(x, "size") <- value
  x
}


#' @export
#' @rdname size
#' 
max_size <- 
function(.stack)
{
  attr(.stack, "max_size")
}


#' @export
#' @rdname size
#' 
"max_size<-" <-
function(x, 
         value)
{
  attr(x, "max_size") <- value
  x
}
