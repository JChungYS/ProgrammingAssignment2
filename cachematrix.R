## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  set <- function(z, x, y) {
    
    mx <<- matrix(data=z, nrow=x, ncol=y)
    
    
  }
  get <- function() mx
  
  list(set = set, get = get)
}


## Write a short comment describing this function

cacheSolve <- function(bb, ...) {
        ## Return a matrix that is the inverse of 'x'
  mx <- bb$get()
  rx <<- ginv(mx)
  if(!is.null(rx)) {
    message("getting cached data")
    return(rx)
  }
  out <- rx$get()
  return(out)
}
