## Put comments here that give an overall description of what your
## functions do

#makeCacheMatrix: This function creates a special “matrix” object that can cache its inverse.

## Write a short comment describing this function

#The first function, makeVector creates a special “vector”, which is really a list containing a function to

#set the value of the vector
#get the value of the vector
#set the value of the mean
#get the value of the mean

# Create a special matrix object that can cache its inverse 
makeCacheMatrix <- function(x = matrix()) {

inv <- NULL                                   #initialize the Inverse

setmatrix <- function(matrix){                #procedure to set the matrix
      x <<- matrix 
      inv <- NULL
                            }
getmatrix <- function(){                      # procedure to get the matrix
      x                                       # return the matrix
                       }
setInverse <- function(inverse){              # procedure to set the inverse of a matrix
      inv <<- inverse
                               }
getInverse <- function() {
      inv                                     # return the inverse of the matrix
                         }
                                              # Return a list

list(setmatrix = setmatrix, getmatrix = getmatrix, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" created by makeCacheMatrix above

cacheSolve <- function(x, ...) {

## Return a matrix that is the inverse of 'x'
      
      inv <- x$getInverse()    
        
# If inverse has already been calculated, return the message and inverse

       if(!is.null(inv)) {
                   message("getting cached data")
                   return(inv)
                       }
# get the matrix from the object

       mat_data <- x$getmatrix()

#Compute the inverse of a matrix using solve function

      inv <- solve(mat_data, ...)  
      x$setInverse(inv)  # set inverse to the object
      inv                 # Return the matrix
}