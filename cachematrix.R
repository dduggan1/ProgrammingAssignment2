## This function is able to cache the inverse of a matrix rather than computing it repeatedly.

## This function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        cachedm <- NULL
        SLV <- function(solve) cachedm <<- solve
        list(SLV = SLV)
}


## This function computes the inverse of the special matrix returned  
## by the makeCacheMatrix function above

cacheSolve <- function(x, ...) {
m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
