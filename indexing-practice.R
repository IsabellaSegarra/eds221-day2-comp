#Making vectors

# character vector
dogs <- c("teddy", "khora","waffle", "banjo")
class(dogs)
typeof(dogs)

#numeric vector
weights <- c(50, 55, 25, 35)
class(weights)
typeof(weights)

#integer vector
dog_age <- c(5L, 6L, 1L, 7L)
class(dog_age)
typeof(dog_age)

is.numeric(dog_age)

#What happens when we combine classes?
dog_info <- c("teddy", 50, 5L)
class(dog_info)
dog_info

# Named elements
dog_food <- c(teddy = "purina",
              khora = "alpha",
              waffle = "fancy feast",
              banjo = "blue diamond")
class(dog_food)

#Accessing bits of vectors

dog_food[2] #indexing
dog_food["khora"]
dog_food[1:3]

# warm up to four loops
i <- 1
dog_food[i]

#key points:
  #index by position
  #define positions with variables

# overwrite data
dog_food[1] <- "BURRITOS"
dog_food

# Matrices

fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9),
                    ncol = 2, nrow = 2, byrow = FALSE)

fish_size

typeof(fish_size)
class(fish_size)

fish_size[1,2]
fish_size[,2] #gives values just for second column
fish_size[1,] #gives just row

#Lists
urchins <- list("blue",
                c(1,2,3),
                c("a cat", "a dog"),
                5L)
urchins

# Access data in a list
# indexing into vector
urchins[2]

#indexing into the elements of vectors
urchins[[2]]

# Naming list
tacos <- list(toppings = c("onion", "cilantro", "guacamole"),
              filling = c("beans", "meat", "veggies"),
              price = c(6.75, 8.25, 9.50))
tacos

tacos[[2]]
tacos$filling

#Data frames
fruit <- data.frame(type = c("apple", "banana", "peach"),
                    mass = c(130, 195, 150))
fruit
class(fruit)

fruit [1,2]
fruit[,2]

fruit [2, 1] <- "pineapple"

# select multiple elements
 x <- 1:10
 x[c(3,1,5)]
x[c(1,1,1)]
x[c(1.2, 5.4, 7.2)]

# exclude elements with negative integers
x[-10] #removes the 10
x[-c(2,4,6,8,10)]
x[c(-1,2)]

# logical vectors
x[c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, TRUE)] #TRUE means keep FALSE means throw away

x[x > 3]

x[] #it is the original vector because nothing was stored

# Subsetting and assigning multiple values

x <- 1:5
x
x[c(1, 2)] <- 2:3

x[-1] <- 4:1
x

# Subset rows in data frames based on conditions (logical subsetting)
mtcars[mtcars$gear == 5, ]

mtcars[mtcars$gear == 5 & mtcars$cyl == 4, ]


#Shorthand version using the subset function
subset(mtcars, gear == 5 & cyl == 4)
subset(mtcars, gear ==5)

#remove columns

df <- data.frame(x = 1:3,
                 y= 3:1,
                 z= c("a", "b", "c"))

df$z <- NULL

df<- df[c("x", "y")]
df[setdiff(names(df), "z")]
df
