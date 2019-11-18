# zadanie 1 ####
 plot(LakeHuron)
identify(LakeHuron,  n = 2, labels = time(LakeHuron))


#zadanie 2 ####

plot(UsingR::emissions)

data.set <- UsingR::emissions
data.set <- data.set[,c('GDP', 'CO2')]
plot(data.set, pch = 20)
to_remove <- identify(data.set, n = 1, labels = rownames(data.set))
plot(data.set[-to_remove, ], pch = 20)

#zadanie 3

x <- c(60, 85, 72, 59, 37, 75, 93, 7, 98, 63, 41, 90, 5, 17, 97)
stem(x, scale = 2 )

