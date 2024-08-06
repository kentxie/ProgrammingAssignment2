## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinvert <- function(invert) i <<- invert
        getinvert <- function() i
        list(set = set,
             get = get,
             setinvert = setinvert,
             getinvert = getinvert)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        i <- x$getinvert()
        if(!is.null(i)){
                print('getting cached data')
                return(i)
        }
        matrix <- x$get()
        i <- solve(matrix)
        x$setinvert(i)
        i
        ## Return a matrix that is the inverse of 'x'
}

