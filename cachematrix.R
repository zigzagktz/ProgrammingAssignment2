makeCachematrix <- function() {
    m=matrix()
		i<- NULL
				setmat<- function(y){
					m <<- y
					i<<- NULL
					}
				getmat <- function() m

				setinverse <- function(inv) i <<- inv

				getinverse <- function() i 
		list(setmat = setmat ,getmat=getmat,setinverse=setinverse,getinverse=getinverse)
}

cacheSolve <- function( m, ...){
		i<- m$getinverse()
		if(!is.null(i)){
			return(i)	}
	
		matt <- m$getmat()
		i <- solve(matt)
		m$setinverse(i)
		i	

}


