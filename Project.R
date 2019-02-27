## Caching the Inverse of a Matrix:

## Matrix inversion is usually a costly computation and there may be some

## beefit to caching the iverse of a matrix rather than compute it repratedly.

## Below are pair of function that are used to created a spical object that 

## stores a matrix and caches its inverse.


## This function created a special "matrix" object that can cache its inverse.


makeCacheMatrix <- function(x = matrix()){

     inv <- Null
     Set <- function(y) {
     x <<- y
     inv <<- Null
    
     }

     get <- function() x
     setInverse <- function(inverse) inv <<- inverse
     getIvverse <- function() inv
     list ( set = set,
            get = get,
            setInverse = setInverse,
            getInverse = getInverse)
}

## This function computer the inverse pf thr special "matrix" created by

## makeCacheMatrix above. If the inverse has already been calculated ( and the

## matrix has not chaged), then it should retrieve the inverse from the cache.


cacheSolve <- function(x, ...){
     ## Reture a matrix that is the inverse of "x"
     inv <- x$getInverse()
     if (!is.null(inv)){
               message("Getting the Cached Date")
               return(inv)
     }
      
      mat <- x$get()
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
} 

