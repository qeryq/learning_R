#zadanie8 ####
library(MASS)
View(Cars93)
sapply(Cars93, is.factor)
data <- MASS::Cars93
with(data, table(Origin, Type))
with(data, round(prop.table(table(Origin, Type)), 2))



#testowanie 
library(UsingR)
smoking <- c('Y', 'N', 'Y', 'N', 'N')

factor(smoking)
table(smoking)

sex <- c('M', 'F', 'F', 'M', 'F')
table()


# zadanie 9 ####
by(data, data$Type, summary)

# zadanie 10 ####


data <- MASS::Insurance
doBy::summaryBy(Claims ~ Age + Group, data = data, FUN = sum )
by(data$Claims, data[, c('Age', 'Group')], sum)


#zadanie 11 #####
mtcars
mtcars6 <- subset(mtcars, cyl == 6)
mtcars6

#zadanie 12 ####
data <- MASS::Cars93
unique(data$Type)
table(data$Type)
subset(data, Type %in% c('Small', 'Sporty'))

# zadanie 13 ####
install.packages("DAAG")
library("DAAG")

data <- DAAG::tinting
data
sapply(data[, sapply(data, is.factor)], levels)
sapply(data[, sapply(data, is.factor)], is.ordered)

sapply(data, is.factor)

?DAAG
??DAAG


#zadanie 14 ####

list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow = 2 ))
list1
sapply(list1, unique)



#zadanie 15 ####
x <- c(1, 8, 2, 6, 3, 8, 5, 5, 5, 5)
sum(x)
log10(x)
max(x)-min(x)

# zadanie 16 ####

diag(c(4,1:3), nrow = 4)

# zadanie 17 ####

D <- matrix(c(1:4,2,1:3,0), ncol = 3, byrow = TRUE)
x <- t(D) #t() to transpozycja 
inv.D <- solve(D)
inv.D
round(D%*%inv.D)


# zadanie 18 ####
r <- 1:5
h <- 4:8
data.frame(r,h,V = round(pi*r^2*h,2), P = round(2*pi*r*(r+h),2))

# zadanie 19 ####

islands
sort(islands, decreasing = TRUE )
head(sort(islands, decreasing = TRUE ), 8)

#zadanie 20 ####
install.packages("schoolmath")
library("schoolmath")

data(primlist, package = 'schoolmath')
max(primlist[primlist>100 & primlist < 1000])
length(primlist[primlist>100 & primlist < 500])
