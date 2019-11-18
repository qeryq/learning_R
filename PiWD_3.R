#zadanie 21 ####
x <- 1:1000
# %/% - czesc ca³kowita z reszty z dzielenia 
# %% reszta z dzielenia 
x[x %% 2 == 0]   <- 1 / x[x %% 2 == 0]  


#zadanie 22 ####
data.set <- MASS::hills 
rownames(subset(data.set, climb ==2100))

with(data.set, rownames(data.set[climb==2100, ]))

with(data.set, rownames(data.set[which(climb ==2100), ]))

#zadanie 23 ####
data.set <- MASS::birthwt
temp.var <- with(data.set, factor(ftv))
levels(temp.var) <- c('0', '1', rep('2 or more', 4))


#zadanie 24 ####
library(car)
data.set <- sample(letters[1:5], 100,  replace = TRUE)
#car::recode(data.set , " c('a", 'b') = '1' ; c('c', 'd') = '2' ; else = '3' ")


#zadanie 25 ####

data.set <- MASS::Pima.tr2
sapply(data.set, function(x) sum(is.na(x)))
#mo¿na u¿yc lapply 


#zadanie 26 ####
tekst <- 'The current year is 2019'
grepl('\\d', tekst)
gregexpr('\\d', tekst)
substr(tekst, gregexpr('\\d{4}$', tekst)[[1]][1], nchar(tekst))

# \\d - wyszukiwanie cyfr      ^ - poczatek w wyrazeniu reg.    $ - koniec wyrazenia (koniec zdania np)


#zadanie 27 ####

adresy <- c('www.dogman.com', 'http://rotterdam.com', 'https://facebook.com', 'httpx://sims.com', 'fungame.http')

grep('^http[^x]', adresy, value = TRUE)

# zadanie 28 ####

table1 <- read.table('http://drizzt.home.amu.edu.pl/images/PWD/Table1.txt', dec = '.', sep = '', header = FALSE)
# \t - tabulator

#zadanie 29 ####

table2 <- read.table('http://drizzt.home.amu.edu.pl/images/PWD/Table2.txt', skip = 2, head = TRUE,na.strings = c('NA', '--', '*', '**') )


