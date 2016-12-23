
#' @importFrom base2 is.wholenumber
#' @export
#' @rdname fifo
#' 
is.stack <-
function(x)
{
  si <- attr(x, "size")
  ms <- attr(x, "max_size")
  
  !is.null(si) && 
    is.integer(si) &&
    si >= 0L && 
    !is.null(ms) &&
    (base2::is.wholenumber(ms) || is.infinite(ms)) &&
    ms >= 0L &&
    is.list(x) && 
    inherits(x, "stack")
}


#' @export
#' @rdname fifo
#' 
is.fifo <- 
function(x)
{
  is.stack(x) && inherits(x, "fifo")
}


#' @export
#' @rdname fifo
#' 
is.lifo <- 
function(x)
{
  is.stack(x) && inherits(x, "lifo")
}


#' @export
#' @rdname fifo
#' 
is.nino <- 
function(x)
{
  is.stack(x) && inherits(x, "nino")
}


#' @export 
#' @rdname fifo
#' 
as.list.stack <- 
function(x, 
         ...)
{
  unclass(x)
}
