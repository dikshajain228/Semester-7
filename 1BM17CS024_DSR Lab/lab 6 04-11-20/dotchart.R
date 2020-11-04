install.packages("ggplot2")
library("gcookbook")
mtcars
dotchart(mtcars$mpg, labels = row.names(mtcars),cex = 0.6, xlab = "mpg")
