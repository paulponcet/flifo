#' @title 
#' Test emptyness of a stack
#' 
#' @description 
#' This method tests if a stack \code{x} is empty.
#' 
#' @param x
#' A stack. 
#' 
#' @return 
#' A logical, \code{TRUE} if \code{x} is empty. 
#' 
#' @seealso The generic function \code{\link[base2]{is.empty}} 
#' in package \pkg{base2}. 
#' 
#' @export
#' 
is.empty.stack <-
function(x)
{
  stopifnot(is.stack(x))
  height(x) == 0L
}
