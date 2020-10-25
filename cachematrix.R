## These functions return the inverse of a matrix

## This function creates a list with the matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m 
  list(set = set, get = get, 
       setsolve = setsolve, 
       getsolve = getsolve)
}

## This function returns the inverse of the matrix created in the previous function
cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- solve(mat,...)
  x$setsolve(m)
  m
}
