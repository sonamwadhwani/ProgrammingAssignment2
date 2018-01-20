


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

####Example 1 [2*2 Matrix] ##### 


TestMatrix <- matrix(1:4,2,2) 

CacheMatrix <- makeCacheMatrix(TestMatrix) 

CacheMatrix$getInverse() 

cacheSolve(CacheMatrix) 

cacheSolve(CacheMatrix)  ## This one shows how the inverse matrix is retrieved from Cache
