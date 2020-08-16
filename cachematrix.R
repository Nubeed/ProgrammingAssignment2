## Gets a matrix and then finds its inverse using solve(x)
## uses cACHING technique 

## This function will just get or set matrices

makeCacheMatrix <- function(x = matrix()) {
  inverse1 <- NULL
  set <- function(mat2){
    mat2 <<- x
    inverse1 <<- NULL
    
  }
  get <- function() {
    x
  }
  setInv <- function (inverse2) {
    inverse1 <<- inverse2
  }
  getInv <- function() {
    inverse1
  }
  list(set = set, get = get, setInv = setInv, getInv = getInv)

}


## this function will use the solve function to get inverse. 

cacheSolve <- function(x, ...) {
  inverse <- x$getInv()
  if (!is.null(inverse)){
    message("getting the data cached")
    return(inverse)
  }
  mat3 <- x$get()
  inverse <- solve(mat3,...)
  x$setInv(inverse)
  inverse
}
