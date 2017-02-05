## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## follow the model of the 'mean' example, but use the solve function for Inverse matrices

makeCacheMatrix <- function(x = matrix()) {
    invrs<-NULL
    set <- function(y) {
      x<<-y
      invrs<<-NULL
    }
    get <- function () x
    setinv <-function(inverse) invrs<<-inverse
    getinv <- function() invrs
    list (set = set, get = get,
          setinv = setinv,
          getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
              inv <- x$getinv()
      if (!is.null(inv)) {
        message("getting cached data..")
        return(inv)
      }
      mat <-x$get()
      inv <- solve(mat,...)
      x$setinv(inv)
      inv

        
}
