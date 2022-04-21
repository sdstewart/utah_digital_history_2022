#install.packages("gender")
#remotes::install_github("lmullen/genderdata")

library(gender)

setwd('/Users/Spencer/Digital History/textual_analysis/')

df <- read.csv("author.csv")

author_list <- as.character(df[,2]);
year_list <- as.numeric(df[,4])

gender_list <- c()
a_list <- c()
length(author_list)
for (a in 1000: length(author_list)){
  author_first <- strsplit(author_list[a], split=" ")[[1]][1]
  year <- year_list[a]
  if (year > 2012){
    year <- 2012
  }
  temp_gender <- gender(author_first, years=year, method="ssa")
  gender <- temp_gender['gender'][[1]]
  #gender_list <- append(gender_list, c(gender, author_list[a]))
  print(cat(paste(year_list[a], gender, author_list[a], sep="\t")))
  #a_list <- append(a_list, author_list[a])
}

gender_list

df1 <- data.frame(list)
