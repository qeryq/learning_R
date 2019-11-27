letters
#Zadanie 4 ####

zad4 <- function(slowo)
{
  data <- unlist(strsplit(slowo, NULL))
  return(match(data, letters))
  
}

match #podównuje s³owa z podanego wektora ze s³owami 
#z innego i wypisuje numery na których znajduje sie 
#wartosc z wektora 1 w wektorze 2 

unlist() #zamienia liste na wektor  
strsplit("tomek", NULL) #zamienia s³owo na liste wektorów


#Zadanie 5 ####
install.packages("ggplot2")
data <- ggplot2::diamonds
by(data$price, data$color, max)


f5 <- function(x)
{
  return(sort(x, decreasing = TRUE)[2])
}

with(data, by(price, color, f5))


#zadanie 6 ####

# data <- UsingR::primes

blizniacze <- function(prime.numbers)
{
  first.number <- prime.numbers[diff(prime.numbers)==2]
  secound.number <- first.number + 2  
  result <- data.frame(first.number, secound.number)
  return(list(result, n = nrow(result)))
}

data <- UsingR::primes

blizniacze(data)

?diff

#zadanie 7 ####

# @x - number
# @y - 2 elements vector

`%between%` <- function(x, y)
{
  return(ifelse(x >= y[1] && x <= y[2], TRUE, FALSE))
}

3 %between% c(2,7)





#LISTA 6 

#zadanie 1 ####

# a)

library(tidyr) #zmienianie d³ugich na szerowkie XD
library(dplyr)

airquality %>%
  select(Temp, Month, Day) %>%
  as_tibble() -> data.set

data.set


f1 <- function(data.set)
{
  return(spread(data.set, key = Month, value = Temp))
}

f1(data.set)

#lub

spread(data.set, key = Month, value = Temp) -> data.set.width

# b)

gather(data.set.width, key = 'Month', value = 'Temp', -Day) -> data.set.long

# c)

unite(data.set, Date,  Day, Month,sep = '.' ) -> data.set.unite

# d)

separate(data.set.unite, Date, c('Day', 'Month'), sep = '\\.') -> data.set.separate


# e) 

data.set[sample(nrow(data.set), 5, replace = FALSE), 'Temp'] <- NA


# data.set[is.na(data.set$Temp) ]  <- 'Unknown'


data.set$Temp %>%
  replace_na('Unknown')


# f)

#sposób 1 

data.set %>%
  fill() %>%
  is.na()

#sposób 2

data.set %>%
  fill(Temp) -> data.set.no.na

data.set.no.na


#na.omit() usuwanie wszystkich wierszy w którym jest kolumna z brakiem 
