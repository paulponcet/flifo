## ---- eval=FALSE, message=FALSE, warning=FALSE---------------------------
#  library(flifo)
#  
#  # Create an empty LIFO
#  s <- lifo()
#  print(s)
#  
#  is.empty(s) # TRUE
#  is.fifo(s)  # FALSE
#  is.lifo(s)  # TRUE

## ---- eval=FALSE, message=FALSE, warning=FALSE---------------------------
#  # Add values to 's'
#  push(s, 0.3)
#  push(s, data.frame(x=1:2, y=2:3))
#  print(s)
#  size(s)
#  
#  pop(s) # get the last element inserted

## ---- eval=FALSE, message=FALSE, warning=FALSE---------------------------
#  s <- fifo(max_size = 3)
#  max_size(s)
#  
#  # max_size can be changed
#  max_size(s) <- 2
#  push(s, 1)
#  push(s, 2)
#  push(s, 3) # generates an error (the stack is full)

## ---- eval=FALSE, message=FALSE, warning=FALSE---------------------------
#  s <- lifo()
#  x <- 3.14
#  exists("x") # TRUE
#  push(s, x)
#  exists("x") # FALSE

## ---- eval=FALSE, message=FALSE, warning=FALSE---------------------------
#  s <- nino()
#  push(s, "foo")
#  print(s)
#  pop(s) # generates an error

