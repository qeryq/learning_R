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

