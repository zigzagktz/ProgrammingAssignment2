

## m is defined as matrix
## i is set to NULL
##Make a function called makeCachematrix that contains 4 other function and return them as a list.
##Function setmat set the value of m in parent environment due to <<- by taking value from getmat function.
##Getmat function have one object called m so whatever value we provide to m it automatically stores into getmat function.
## Atlast it return as list with 4 functions


makeCachematrix <- function() {
    m=matrix()
		i<- NULL
				setmat<- function(y){
					m <<- y
					i<<- NULL
					}
				getmat <- function() m        

				setinverse <- function(inv) i <<- inv  ## takes argument inv and assign it to i in parent environment

				getinverse <- function() i ##stores the value of inverse to be called upon got checked in cahceSolve function
	
		list(setmat = setmat ,
		     getmat=getmat,
		     setinverse=setinverse,
		     getinverse=getinverse)   ## assigning name to function as a list
}

##cacheSolve funtion have have a if condition in it
## if getinverse function already have a cached value it returns that same value
## Otherwise, value from getmat functin which was taken by encoluser of function makeCachematrix
cacheSolve <- function( m, ...){
		i<- m$getinverse()
		if(!is.null(i)){
			return(i)	}
	
		matt <- m$getmat()
		i <- solve(matt)  ## Solve function makes inverse out of matrix and store in i
		m$setinverse(i)   ## Calling setinverse and passing value i which sets the value of i as inverse in makeCachematrix function
 		i	          ## Returning the invrese

}


