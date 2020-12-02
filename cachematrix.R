## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## there are two function makeCacheMatrix and cachesolve
# Library MASS youd to calculate inverse for non squared as wel as square matrices
library(MASS)
makeCacheMatrix <- function(x = matrix()) {
    inv<-NULL   #intialize Null
    set <- function(y){
        x<<-y
        inv<<- NULL
    }
    get <-function() {x}  # get matrix
    setInverse <- function(inverse) {inv<<-inverse}
    getInverse <- function() {inv}
    list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
    }


## Write a short comment describing this function

cachesolve<-function(x, ...){
    ## Return a matrix that is the inverse of 'x'
    inv<- x$getInverse()
    if(!is.null(inv)){
        message("getting cached data")
        return(inv)
    }
    mat<-x$get()
    inv<-solve(mat, ...)
    x$setInverse(inv)
    inv
}
       

