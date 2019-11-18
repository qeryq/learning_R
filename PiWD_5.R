#zadanie 1 ####

mz <- function(a,b,c, draw = TRUE){
  if(a == 0)  stop("To nie jest funkcja kwadratowa")#konczy komunikatem o bledzie
    
  delta <- b^2 - 4*a*c
  q <- -delta/(4*a)
  p <- -b/(2*a)
  if(draw)
    {
      curve(a*x^2 + b * x + c, from = p - 3, to = p + 3, ylab = 'f(x)' )
      points(p, q, pch = 20, col = 'salmon', cex = 2)
      abline(h = 0, lty = 2) #linia pionowa
      abline(v = 0, lty = 2) #linia pozioma
    }
  
  return(list(ifelse(a>0, 'min', 'max'), x0= p, y0 = q))
    
}

#zadanie 2 ####

hamming <- function(x, y){
  
  if( length(x) != length(y))
    stop("Ciagi nie sa rowne")
  sum(x!=y)
  
  
}


#zadanie 3 ####

dzielniki <- function(x){
  a <- NULL
  for( i in 1:sqrt(x) )
  {
    if(x %% i == 0 )a <- c(a, i, x/i)
  }
  
  return (sort(unique(a)))
  
}

