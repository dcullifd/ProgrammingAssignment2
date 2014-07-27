## Put comments here that give an overall description of what your
## functions do

Matrix inversion is usually a costly computation and their may be some benefit 
to caching the inverse of a matrix rather than compute it repeatedly. The following functions enable
caching the inverse of a matrix

makeCacheMatrix is a function which creates a special "matrix" object that can cache its inverse. It will return a list of its functions

set and cache the current matrix
return the value of the matrix
get the value of the inverse of the matrix
cache the value of the inverse 

makeCacheMatrix <- function(X = matrix() {
  
      
      cache <- NULL
  
      # holds current cahed Matrix or NULL
      setMatrix <- function(Y) {
          X <<- Y
    
          cache <<- NULL
    
      }
      # get stored matrix
      getMatrix <- function() {
          X
      }

      # cache given argument
      cacheInverse <- function(solve) {
          cache <<-solve
      }
      
      # get cached value
      getInverse <- function() {
        cache
      }
      
      # return a list . each named element is a function
      list(setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
      
}


cacheSolve - This function computes the inverse of the special "matrix" returned by 
makeCacheMatrix above. If the inverse has already been calculated 
(and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
  
      # Return a matrix that is the inverse of 'x'
      # get the cached value
      inverse <- y$getInverse()
      
      # if a cached value exists return it
      if(!is.null(inverse)) {
      message("getting cached data")
      return(inverse)
      }
      
      # otherwise get the matrix, caclulate the inverse and store it in
      # the cache
      
      data <- y$getMatrix()
      inverse <- solve(data)
      y$cacheInverse(inverse)
  
      # return the inverse
      inverse

}



##nOTES

####Reference to material used to help me with this assignment
http://stackoverflow.com/questions/2628621/how-do-you-use-scoping-assignment-in-r


##Use of solve function

  # Where X is a square invertible matrix solve(X) returns its inverse. 
  # Create a square matrix in R 
  X = matrix(c(6, 14, 27, 51), nrow=2, ncol=2)

  # Inversing the matrix in R 
  solve(X)

  #      [,1] [,2]
  # [1,] -0.1  0.3
  # [2,]  0.4 -0.2 