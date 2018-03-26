## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i=NULL

  
set<- function(y){
      mcm<-y
      i<- NULL
}

get<- function(){
  mcm
}

setInverse<- function(inverse){
i<- inverse  
}

getInverse<- function(){
  i
}

list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...){
  i<-x$getInverse()
  if(!is.null(i)){
    print("Cache Data is")
    return(i)
  }
  data <- x$get()
  i<-solve(data) %*% data
  x$setInverse(i)
  return(i)
  
}
