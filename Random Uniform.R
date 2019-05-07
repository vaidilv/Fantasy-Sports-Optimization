myrunif <- function(n, min=0, max=1) {
  min + (sample(.Machine$integer.max, n) - 1) / (.Machine$integer.max - 1) *
    (max - min)
}

salaries <- as.data.frame(round(myrunif(100,5000,14000),2))
View(salaries)
summary(salaries)

scores <- as.data.frame(round(myrunif(100,1,25),2))
View(scores)
summary(scores)

scores_v <- runif(100, min = 5000, max = 14000)
View(scores_v)
