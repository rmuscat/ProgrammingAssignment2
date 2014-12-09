## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mInverse <- NULL
  
  set <- function(y) {
    x <<- y
    mInverse <- NULL
  }
  
  get <- function() {
    x
  }
  
  setInverse <- function(inverse) {
    mInverse <<- inverse
  } 
  
  getInverse <- function() {
    mInverse
  }
  list (set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    localInverse <- x$getInverse()
    if (!is.null(localInverse)) {
      message("Retrieving cached inverse...")
      return(localInverse)
    }
    localMatrix <- x$get()
    localInverse <- solve(localMatrix,...)
    x$setInverse(localInverse)
    localInverse
}
