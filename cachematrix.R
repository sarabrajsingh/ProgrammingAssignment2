#Put comments here that give an overall description of what your
#functions do

# Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # Setting the invesse variable to NULL
  inverse <- NULL 
  #Cache's the inverse and X variable in memory. Sets the matrix up
  set <- function(y){
      x <<- y
      inverse <<- NULL
  }
  #Defining 'get' as the function which retrieves the matrix
  get <- function() x
  
  #Defining the inverser function here
  setinverse <- function(solve) inverse <<- solve
  
  #Obtians the inversed matrix here
  getinverse <- function() inverse
  
  #Outputs the newly inversed matrix
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  
  # if 'inverse' is NOT = NULL, then get the cached data and display it on the screen
  if(!is.null(inverse)) {
    message("getting cached data")
    print(inverse)
  }
  
  #Since the inverse matrix isn't calculated yet; we will calculate it with these two steps
  dataset <- x$get()
  inverse <- solve(data, ...)
  
  #Cache the value of 'inverse' and display it
  x$setinverse(inverse)
  print(inverse)
}