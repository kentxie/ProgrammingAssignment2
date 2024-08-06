## The below lines of code take an invertible matrix and return its inverse

## The function below sets x as the matrix and the i to NULL. It also defines 4 functions, all of which can be invoked to set objects to variables. It returns a list of functions and the retained 
$$ variables initialized within its environment

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


## The function below takes the list from the output of the above function and checks if i, the variable that represents the inverted matrix, is NULL. If it isn't NULL, which implies the inverted matrix has already
## been calculated, the function will retrieve the cached matrix. If it is NULL, then it will retrieve the matrix set in the makeCacheMatrix function and calculates and returns the inverted matrix

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

