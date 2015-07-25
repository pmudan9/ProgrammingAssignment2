# These functions will cache and compute the inverse of the matrix
# This creates a special matrix object which can cache its inverse.

makeCacheMatrix <- function(mtx = matrix()) {
inverse <- NULL
set <- function(x) {
inverse <<- NULL;
mtx <<- x;
} 
get <- function() return(mtx);
getinv <- function() return(inverse);
setinv <- function(inv) inverse <<- inv;
return(list(set, get, setinv, getinv))
}

# Next, computing the inverse of the special matrix returned by the function above. CacheSolve should retrieve the inverse of the cache.

cacheSolve <- function(mtx, ...) {
inverse <- mtx$getinv()
if(!is.null(inverse)) {
return(inverse)
}
data <- mtx$get()
invserse <- solve(data)
x$setinv(inverse)
return(inverse)
}
