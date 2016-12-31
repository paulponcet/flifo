
#' @importFrom base2 is.wholenumber
#' @export
#' @rdname fifo
#' 
is.stack <-
function(x)
{
  mh <- attr(x, "max_height")
  si <- attr(x, "sizes")
  ms <- attr(x, "max_size")
  
  !is.null(mh) && 
    (base2::is.wholenumber(mh) || is.infinite(mh)) &&
    !is.null(si) && 
    is.numeric(si) &&
    all(si >= 0) && 
    mh >= length(si) - 1L && 
    !is.null(ms) && 
    is.numeric(ms) && 
    ms >= sum(si) && 
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
