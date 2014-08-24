cacheSolve<-function(x,...){
	matrix<-x$getmatrix()
	if(!is.null(matrix)){
		message("getting cached data")
		inverseMatrix <- solve(matrix)%*%matrix
		return (inverseMatrix)
	}
		data<-x$getdata()
            row<-x$getmatrixRow()
		col<-x$getmatrixCol()
		matrix<-matrix(data,row,col)
		x$setmatrix()
		inverseMatrix <- solve(matrix)%*%matrix
		inverseMatrix
}


