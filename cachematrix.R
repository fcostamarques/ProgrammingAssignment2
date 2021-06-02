## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


## Put comments here that give an overall description of what your
## functions do
# Coursera - Week 3
# These functions are a time saving solution to calculate the inverse of a matrix. 
# This consists of set, get, setinv, getinv.

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

# cachaSolve function - this gives me the cached data.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}


pmatrix <- makeCacheMatrix(matrix(1:4, nrow =2, ncol = 2))
pmatrix$get()
pmatrix$getInverse()
cacheSolve(pmatrix)
cacheSolve(pmatrix)
pmatrix$getInverse()