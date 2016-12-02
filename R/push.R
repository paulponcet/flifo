#' @title 
#' Insert an object into a stack 
#' 
#' @description 
#' The \code{push} function inserts an 
#' object into \code{.stack}. 
#' 
#' @details 
#' The \code{push} function is not pure. Side effects (made on purpose) are: 
#' \itemize{
#'   \item \code{.stack} is modified in the calling environment; 
#'   \item \code{x} is removed (deleted) if it exists in the calling environment. 
#' }
#' 
#' @param .stack
#' A stack. 
#' 
#' @param x
#' An object to insert in \code{.stack}. 
#' 
#' @return 
#' \code{NULL} is returned invisibly. 
#' 
#' @seealso 
#' \code{\link[flifo]{pop}}. 
#' 
#' @export
#' 
#' @examples 
#' (s <- lifo(max_size = 3)) # empty LIFO
#' (push(s, 0.3)) #
#' (push(s, data.frame(x=1:2, y=2:3))) 
#' obj <- pop(s) # get the last element inserted
#' 
push <- 
function(.stack, 
         x)
{
  s <- deparse(substitute(.stack))
  env <- parent.frame()
  if (!exists(s, envir = env)) stop("'.stack' does not exist in the calling environment")

  if (!is.stack(.stack)) stop("'.stack' must be a stack")
  if (missing(x)) stop("'x' is missing")
  nx <- deparse(substitute(x))

  cl <- class(.stack)
  si <- size(.stack)
  ms <- max_size(.stack)
  if (si+1L > ms) stop("'.stack' is full")
  
  ## Update '.stack'
  if (is.fifo(.stack)) {
    .stack <- c(.stack, list(x))
  } else if (is.lifo(.stack)) {
    .stack <- c(list(x), .stack)
  } else if (is.nino(.stack)) {
    # do nothing
  }
  class(.stack) <- cl
  size(.stack) <- si + 1L
  attr(.stack, "max_size") <- ms
  assign(s, .stack, envir = env)

  ## Remove 'x' from the calling environment
  if (exists(nx, envir = env)) rm(list = nx, envir = env)
  
  invisible(NULL)
}
