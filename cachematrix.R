## Two functions that cache the inverse of a matrix.


## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
        x <<- y 
        inv <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inv <<- solve
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, 
       getinverse = getinverse)

}


## This function computes the inverse of the special "martrix" returned by makeCacheMatrix above
## It return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if (!is.null(inv)) {
        message ("getting cached data")
        return (m)
  }
  data<- x$get()
  inv <- solve(data, ...)
  x$setinverse (inv)
  inv     
}
