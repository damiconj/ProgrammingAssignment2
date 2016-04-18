## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function takes a matrix as an input and creates a vector
## list containing a function to set the value of the matrix,
## get the value of the matrix, set the inverse of the matrix,
## and get the value of the inverse of the matrix

makeCacheInverse <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- functaion() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Write a short comment describing this function
## This funciton refers to the output of the above function.
## It will calculate the inverse of the matrix, after checking
## to see if the inverse of the matrix has already exists

cacheinverse <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}