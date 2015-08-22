## first we create a list of functions to set the value of some matrix, get the value
## set the inverse matrix values and get the inverse matrix values 

#1.set the value of the matrix
#2.get the value of the matrix
#3.set the value of the inverse matrix
#4.get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInv <- function(solve) m <<- solve
  getInv <- function() m
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


#We check if inverse of the inputted matrix has already be calculated
#otherwise calculates inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInv(m)
  m
  }
 
