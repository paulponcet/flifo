
#' @export
#' 
"[.stack" <-
function(x, i)
{
  stop("stacks have no '[.' method available")
#  if (i != -1) stop("incorrect 'i' argument (for stacks only 'i = -1' is possible)")
#  pop(x)
#  x
}


#' @export
#' 
"[[.stack" <-
function(x, i)
{
  stop("stacks have no '[[.' method available")
  #  if (i != 1) stop("incorrect 'i' argument (for stacks only 'i=1' is possible)")
#  v = pop(x)
#  v
}
