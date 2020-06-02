## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function creates a special "matrix" object that can cache its inverse
##The argument with default mode of "matrix" is defined. inv is initialized as NULL. The set function is defined to assign new value of matrix in the parent environment.
##If there is a new matrix, then inv will get reset to NULL. The get function is defined to return the value of the matrix argument. The value of inv is assigned in parent environment.
## getinverse gets the value of inv when called.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
}
get <- function() x
        
setinverse <- function(inverse) inv <<- inversse
getinverse <- function() inv
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse_
}
## Write a short comment describing this function
##This function computes the inverse of the special "matrix" returned by makeCachematrix above.
##If the inverse has already been calculated and the matrix hasnot changed then cacheSolve will retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null((inv)) {
                message("getting cached data")
                return(inv)
              }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
  }
 

