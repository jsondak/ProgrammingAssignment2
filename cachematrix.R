## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## The cacheSolve function compares the matrix to what has previously been in the environment
# First it checks whether an inverse has already been run
# Then it checks if a cacheSolve has been run
# It determines whether the matrix has changed. If not, cached matrix is returned
# Finally, it runs functions to get value of and cache the input matrix and inverse matrix


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
