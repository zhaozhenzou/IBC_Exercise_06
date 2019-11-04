# Load data into R
df <- read.csv("iris.csv", header=TRUE)

# print last 2 rows in last 2 cols
tail(df, n=2)[,(ncol(df)-1):ncol(df)]

# number of observations for each species
summary(df$Species)

# get rows with sepal width > 3.5
df[df$Sepal.Width > 3.5,]

# write data for species setosa to setosa.csv
write.csv(df[df$Species=="setosa",], file="setosa.csv")

# calculate mean, min, and max of petal length from virginica
a <- mean(df[df$Species=="virginica",]$Petal.Length)
cat("Mean Petal Length:", a)
b <- min(df[df$Species=="virginica",]$Petal.Length)
cat("Min Petal Length:", b)
c <- max(df[df$Species=="virginica",]$Petal.Length)
cat("Max Petal Length:", c)
