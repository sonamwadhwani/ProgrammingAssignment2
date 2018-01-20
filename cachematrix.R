## Programming Assingment 2
## This is setter and getter function for matrix and inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setmatrix <- function(y) {
    x <<- y
    m <<- NULL
  }
  getmatrix <- function() x
  setinversematrix<- function(invMatrix) m <<- invMatrix
  
  getinversematrix <- function() m
  list(          setmatrix = setmatrix,
                 getmatrix = getmatrix, setinversematrix = setinversematrix, getinversematrix = getinversematrix)
  
}


## This is the function for quick access from Cache memory

cacheSolve <- function(x, ...) {
  m <- x$getinversematrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$getmatrix()
  m <- inv(data, ...)
  x$setinversematrix(m)
  m
}
