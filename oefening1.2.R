dataset <- mtcars
View(dataset)
names(dataset)
dataset$cyl
nrow(dataset)
ncol(dataset)
a = dataset$mpg
b = dataset$hp

matrixa <- data.frame(mpg=a,hp=b)
matrixa


