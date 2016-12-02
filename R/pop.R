#' @title 
#' Retrieve an object from a stack
#' 
#' @description 
#' The \code{pop} function retrieves the first reachable 
#' object from \code{.stack}. 
#' 
#' @details 
#' The \code{pop} function is not pure. Side effect is that 
#' \code{.stack} is modified in the calling environment. 
#' 
#' @param .stack
#' A stack. 
#'
#' @return 
#' The object retrieved. 
#' If \code{.stack} is empty, an error is thrown. 
#' 
#' @seealso 
#' \code{\link[flifo]{push}}. 
#' 
#' @export
#' 
#' @examples 
#' (s <- lifo(max_size = 3)) # empty LIFO
#' (push(s, 0.3)) #
#' (push(s, data.frame(x=1:2, y=2:3))) 
#' obj <- pop(s) # get the last element inserted
#' 
pop <- 
function(.stack)
{
  s <- deparse(substitute(.stack))
  env <- parent.frame()
  if (!exists(s, envir = env)) stop("'.stack' does not exist in the calling environment")

  if (!is.stack(.stack)) stop("'.stack' must be a stack")
  if (is.nino(.stack)) stop("cannot retrieve elements from a 'nino' stack")
  if (base2::is.empty(.stack)) stop("'.stack' is empty")
  
  cl <- class(.stack)
  si <- size(.stack)
  ms <- max_size(.stack)
  
  .stack <- as.list(.stack)
  x <- .stack[[1L]]
  .stack <- .stack[-1L]
  class(.stack) <- cl
  size(.stack) <- si - 1L
  attr(.stack, "max_size") <- ms
  assign(s, .stack, envir = env)
  x
}
