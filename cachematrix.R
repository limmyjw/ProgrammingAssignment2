## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function gets a matrix, inverts it and caches the result.


makeCacheMatrix <- function(x = matrix()) {
        mc<-NULL
        set <-function(y){
        x<<- y
        mc<<- NULL
        }
        get <-function() x
        setinverse <- function(solve) mc<<- solve
        getinverse <- function() mc  
        list(set = set, get= get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## this function checks wether the given matrix\is already stored cache
## if so the getinverse is true and the mesaage is printed
## if not true, the inverse is calculated


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mc <-x$getinverse()
        if(!is.null(mc)){
                message("getting cached data")
                return(mc)
        }
        data <-x$get()
        mc <- solve(data, ...)
        x$setinverse(mc)
        print(mc)
}
