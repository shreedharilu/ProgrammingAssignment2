## Get mean by using library matlib with inverse function inv()


## Almost same as example in course
library(matlib)
makeCacheMatrix <- function(x = matrix())
  {
  
  inv<-NULL
  set<-function(y)
  {
    x<<-y
    inv<<-NULL
  }
  get<-function() x
  setinverse <- function (inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Almost same as example in the course

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv<-inv(data)
  x$setmean(inv)
  inv
}
