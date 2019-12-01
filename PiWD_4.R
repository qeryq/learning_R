#zadanie 3 ####

x <- c(60, 85, 72, 59, 37, 75, 93, 7, 98, 63, 41, 90, 5, 17, 97)
stem(x, scale = 2 )

#zadanie 4 ####

data.set <- DAAG :: possum

with(data.set, stem(hdlngth))

with(data.set, hist(hdlngth), col='red', prob=TRUE)

with(data.set,lines(density(hdlngth), col = 'blue', lwd = 2))


#zadanie 5 ####

data.set <- UsingR::chips
boxplot(data.set,
        col= sample(colors(ncol(data.set)), 
                    replace = FALSE),
        pch=30)

# zadanie 6 ####
chicken
data.set <-  UsingR::chicken

boxplot(data.set, col = sample(colors(ncol(data.set)), replace = FALSE ), pch = 40)

#zadanie 7 ####

data.set <- UsingR :: carbon
boxplot(Monoxide~Site, data=data.set, col= sample(colors(ncol(data.set)), replace = FALSE), pch=20)

#zadanie 8 ####

curve(sin, from = -pi,to = pi, axes = FALSE, col = 'red', lwd = 3)

axis(1, pos=0, at = seq(-pi, pi , by = pi / 2), labels = expression(-pi, -pi/2, NA, pi/2, pi))
axis(2,pos=0, labels = FALSE)

#zadanie 9 ####

MASS::survey
data.set <- MASS :: survey
tab.data <- table(data.set$Exer)
data.set$Exer <- ordered(data.set$Exer, levels=c('None', 'Some','Freq'))

par(mfrow = c(1, 2))

colors <- sample(colors(3), replace=FALSE)

#wykres słupkowy 
barplot(tab.data,col=colors)

#wykres kolowy 
pie(tab.data, col=colors)

table(data.set$Smoke)
summary(data.set$Smoke)


#zadanie 10  ####
data.set <- DAAG::orings
#View(data.set)
selected.obs <- c(1,2,4,11,13,18)

par(mfrow=c(1, 2))

with(data.set, plot(Temperature, Total, pch=20))

with(data.set[selected.obs, ], plot(Temperature, Total, pch=20))

par(mfrow=c(1,1))


with(data.set, plot(Temperature, Total, pch=20))

with(data.set[selected.obs, ], points(Temperature, Total, pch=20, col='red'))

legend('topright', legend = c('Used','Unused'), pch=20, col=2:1)


#zadanie 11 ####
data.set <- DAAG::Manitoba.lakes

with(data.set, plot(log10(elevation), log10(area), type='n'))

with(data.set, text(log10(elevation), log10(area), rownames(data.set)))

# zadanie 12 ####

par(mfrow = c(1,2,3))

data.set <- iris


colors <- sample(colors(3), replace=FALSE)

levels <- levels(data.set$Species)

#levels = c('setosa', 'versicolor', 'virginica')

with(data.set , boxplot(Sepal.Width, Species) )

?boxplot

boxplot(data.set$Sepal.Width~data.set$Species , col = colors , replace = FALSE , pch = 20,
        xlab = 'Species', ylab = 'Sepal width in mm', main = 'Comparison of three species in the Fisher iris data',
        notch = TRUE, , border = 'blue', pars = list(boxwex = .5,staplewex = 0.5, outwex = 5 ))
# zad 13 ####

random.value <- runif(100, 0, 1)
random.value

random.matrix <- matrix(random.value, ncol = 10, nrow = 10)
random.matrix

image(random.matrix, col = grey.colors(10))

contour(random.matrix)


#zadanie 14 ####

x <- runif(100, 0, 1)
y <- runif(100, 0, 1)

x <- y <- seq(from = 0, to = 1, length.out = 20)
df <- expand.grid(x = x, y = y)
z.matrix  = matrix((df$x + df$y)/2, nrow = 20)

#z.matrix <- outer(x, y, function(x,y) (x+y)/ 2)


persp(x, y, z = z.matrix, 
      col = 'lightgreen', 
      theta = 30, 
      phi = 30)

#zadanie 15 ####
?iris
?layout

layout(matrix(c(1, 3, 2, 3), nrow = 2))
with(iris, plot(Sepal.Length, Sepal.Width,
                col = 'lightblue',
                pch = 15))

with(iris, plot(Sepal.Length, Petal.Width,
                col = 'lightgreen',
                pch = 17))

with(iris, plot(Sepal.Length, Petal.Length,
                col = 'brown', pch = 10))

?Sepal.Lengh

