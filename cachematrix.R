## These functions cache the inverse of an established matrix so we will not have to make the same computation repeatedly.

## The makeCacheMatrix function creates an object that can cache the input matrix and its inverse.
# First the NULL values are established as default values in case cacheSolve hasn't been done
# Then the value of the matrix is set
# The inputed matrix is cached and 'solve' checks whether it has changed
# The functions set, get, setmatrix, and getmatrix are established

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## The cacheSolve function compares the matrix to what has previously been in the environment
# First it checks whether an inverse has already been run
# Then it checks if a cacheSolve has been run
# It determines whether the matrix has changed. If not, the cached matrix is returned
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
