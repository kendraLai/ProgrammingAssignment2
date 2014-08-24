makeCacheMatrix <- function(x,row,col) {
        matrix<-NULL
        
        setdata <- function(y){
			x <<- y 	
                  matrix <<- NULL            
		}
         setmatrixRow <- function(nrow){
			row <<- nrow
        	}
         setmatrixCol <- function(ncol){
			col <<- ncol
		}
	   setmatrix <- function(){
              data <<- getdata()
              mrow <<- getmatrixRow()
              mcol <<- getmatrixCol()
		  matrix <<- matrix(data,mrow,mcol)   		       
		 }

	  getdata <- function() x
        getmatrixRow <- function() row	
	  getmatrixCol <- function() col
	  getmatrix <- function() matrix

        list(setdata = setdata , setmatrixRow = setmatrixRow, setmatrixCol = setmatrixCol, setmatrix = setmatrix,
             getdata = getdata, getmatrixRow = getmatrixRow,getmatrixCol =getmatrixCol, getmatrix = getmatrix)
}



