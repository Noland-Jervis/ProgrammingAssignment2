This function produces a list that contains a function to set/get the value of a matrix
and set/get the value of the inversion of that matrix. 
makeCacheMatrix <- function(x = matrix()) {
  
assigns the value NULL to inv, which will hold the inverted matrix
inv <- NULL
  
creates the set function and assigns argument y to argument x
set <- function(y) {
x <<- y
since this assigns a matrix to x but does not compute anything, inv is still NULL
inv <<- NULL
}
creates the get function, returns whatever is stored in x
get <- function() x
creates a function to set the value for the inverted matrix, stored in inv
setinverse <- function(inverse) inv <<- inverse
creates a function to get the value of the inverted matrix, stored in inv
getinverse <- function() inv
list(set = set, get = get,
setinverse = setinverse,
makeCacheMatrix <- function(x = matrix()) {
cacheSolve <- function(x, ...) {
Return a matrix that is the inverse of 'x'
if there is already an inverted matrix cached, it will be assigned to inv 
inv <- x$getinverse()
if there is already an inverted matrix cached, it will be assigned to inv 
if(!is.null(inv)) {
message("getting cached data")
return(inv)
}
if there is no inverted matrix cached, it will be computed from the uninverted matrix
matrix <- x$get()
inv <- solve(matrix, ...)
x$setmean(inv)
caches the inverted matrix after it has been solved
x$setinverse(inv)
returns the inverted matri
inv
}
