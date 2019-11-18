#zadanie 1 ####

x = 10:20


#zadanie 2 ####

x <- c(3,4,5)

 for (z in 1:4) 
{
  print(x) 
  
}

rep(x,4)

rm(x,z)


#zadanie 3 ####

a = seq(from = 4, to = 4, length.out = 8)

b = seq(from = 6, to = 6, length.out = 7)

c = seq(from = 3, to = 3, length.out = 9)

x <- c(a,b,c)

rep(c(4,6,3), c(8,7,9)) #using rep to create sequention of numbers 

M = matrix(x, nrow = 6, ncol = 4)

rm(a,b,c,x,M, z)

#zadanie 4 ####

x = NULL

for (z in 1:100) 
{
  if(z%%2!=0)
  {
    x <-  c(x, z)
  }
    
}

seq(1,100,2)

print(x)

rm(x,z)

#zadanie 5 #### 

wektor = NULL

for(i in 1:9)
{
  for(j in 1:i)
  {
    pomoc = seq(from = i, to = i, length.out = j)
    wektor <- c(wektor, i)
  }
}

rep(1:9, 1:9) 

print(wektor)

rm(i,j,wektor)

#zadanie 6 ####

zadanie6 <- c(NA,3,14,NA,33,17,NA,41)

licznikNA= 0
suma = 0


for(i in 1:length(zadanie6))
{
  if(is.na(zadanie6[i])==TRUE)
  {
    licznikNA = licznikNA + 1 
    
  }
  else 
  {
    suma = suma + zadanie6[i]
  }
  
  
  
}



srednia = suma / (length(zadanie6)-licznikNA)


print(suma)
print(srednia)

rm(zadanie6,licznikNA, suma, srednia)

#zadanie6 - funkcyjnie  ####

zadanie6 <- c(NA,3,14,NA,33,17,NA,41)
NA_Counter = sum(is.na(zadanie6))
print(NA_Counter)


suma = sum(zadanie6, NA, na.rm = TRUE)
srednia = mean(zadanie6, na.rm = TRUE)

dane_bez_NA <- c(zadanie6)
#max(dane_bez_NA, na.rm ==TRUE)
dane_bez_NA <- dane_bez_NA[!is.na(dane_bez_NA)]

na.omit(zadanie6) #wyswietla dane bez NA

dane_z_11 <- c(zadanie6)
dane_z_11[is.na(dane_z_11)] <- c(11)


print(suma)
print(srednia)
print(dane_bez_NA)
print(dane_z_11)

rm(zadanie6, suma,srednia, dane_bez_NA,dane_z_11,NA_Counter)


#zadanie7 ####

cfb

?cfb


View(cfb) #wyswietla widok 


?subset

View(subset(cfb, INCOME > 0 & NETWORTH <0))

count(subset(cfb, INCOME > 0 & NETWORTH <0))

nrow(subset(cfb, INCOME > 0 & NETWORTH <0))

ls()

rm(zadanie7,x, cfb)

vvv

#zadanie8 ####

Cars93
View(Cars93)




?apply

?sapply


  View(sapply(Cars93, is.factor))



#testowanie 
x = c(1,2,3,4,NA)

sum(x, NA, na.rm = TRUE)




ls()





x <- c(1,2,3,4,5,1,2,3)

smoking <- c('Y', 'N', 'Y', 'N', 'N')

factor(smoking)
table(smoking)

sex <- c('M', 'F', 'F', 'M', 'F')
table()