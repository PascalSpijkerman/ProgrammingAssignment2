## This function is creating a matrix object to cache the inverse as reequired by Assignment function 1.


makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
 set <- function(y){
   x <<- y
   inv <- NULL
   
 }
 
 get <- function() x
 setInverse <- function(solveMatrix) inv <<- solveMatrix
 getInverse <- function() inv
 list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This is step 2 of the R Assigment. This function is used to compute the inverse of a special matrix as requestes for step 2 of the assignment. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
    
  }
  
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      

}
