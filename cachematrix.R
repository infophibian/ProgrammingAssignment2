## Put comments here that give an overall description of what your
## functions do

## Save the inverse of a matrix to a cache:

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve 
        getinverse <- function() m
        list(set = set, get = get, 
               setinverse = setinverse,
               getinverse = getinverse)

}


## Checks to see if the inverse has already been calculated, and retrieves it if it has. 
## Otherwise, calculates the inverse. 

cacheSolve <- function(x, ...) {
        ##Check if inverse has already been calculated:
       m <- x$getinverse()
       if(!is.null(m)){
               message("getting cached data")
               return(m)
       }
       ## Return a matrix that is the inverse of 'x'
       data <- x$get()
       m <- solve(data, ...)
       x$setinverse(m)
       m
        
}
