#!/usr/bin/env r


# ====================================================
# NobelDB®  : A Dedicated Database of Nobel Laureates.
# With ♥    : Prabhat Kumar, http://prabhatkumar.org/
# ====================================================
# Date      : 22-Sept-2016
# ====================================================
# Locale    : en_US.UTF-8
# ====================================================
# To Do     : Analysis of Nobel Laureates Data.
# ====================================================

# Remove Objects from a Specified Environment.
rm(list = ls())

# ggplot2
# ggplot2 is a plotting system for R, based on the grammar of graphics.
if (!require("ggplot2")) {
  stop('The package ggplot2 was not installed!')
  } else {
  install.packages("ggplot2")
}

# jsonlite
# jsonlite is a Robust, High Performance JSON Parser and Generator for R.
if (!require("jsonlite")) {
  stop('The package jsonlite was not installed!')
  } else {
  install.packages("jsonlite")
}

# plyr
# plyr is a Tools for Splitting, Applying and Combining Data.
if (!require("plyr")) {
  stop('The package plyr was not installed!')
  } else {
  install.packages("plyr")
}

# dplyr
# dplyr is a grammar of data manipulation.
if (!require("dplyr")) {
  stop('The package dplyr was not installed!')
  } else {
  install.packages("dplyr")
}

# tidyr
# tidyr - easily tidy data with spread and gather functions.
if (!require("tidyr")) {
  stop('The package tidyr was not installed!')
  } else {
  install.packages("tidyr")
}

# xtable
# xtable - Export Tables to LaTeX or HTML.
if (!require("xtable")) {
  stop('The package xtable was not installed!')
  } else {
  install.packages("xtable")
}

# cluster
# cluster - methods for cluster analysis.
if (!require("cluster")) {
  stop('The package cluster was not installed!')
  } else {
  install.packages("cluster")
}

# networkD3
# networkD3 - D3 JavaScript Network Graphs from R.
if (!require("networkD3")) {
  stop('The package networkD3 was not installed!')
  } else {
  install.packages("networkD3")
}

# Setting Working Directory
# ~~~~~~~~~~~~~~~~~~~~~~~~~
setwd("~/Users/nobeldb/Desktop/NobelDB")

# 1. Getting the Data
# -> We use the Nobel Prize API to fetch Nobel Laureates Data in JSON format.
theData <- "http://api.nobelprize.org/v1/laureate.json"
# -> Assigning to a variable - nobels.
nobels <- fromJSON(theData)
# -> Print the names attribute of the 'nobels' data set.
names(nobels)
## [1] "laureates"
names(nobels$laureates)
##  [1] "id"              "firstname"       "surname"
##  [4] "born"            "died"            "bornCountry"
##  [7] "bornCountryCode" "bornCity"        "diedCountry"
## [10] "diedCountryCode" "diedCity"        "gender"
## [13] "prizes"
names(nobels$laureates$prizes[[1]])
## [1] "year"         "category"     "share"        "motivation"
## [5] "affiliations"

# Conclusion of Primary Investigation.
# -> The variable `nobels` is a list with one named element, laureates.
#    The variable laureates is a data frame with 13 columns, one row per laureate.
#    The last column, prizes is a list of data frames.
#    √ Note: that analyses that use prizes may count some laureates twice.
#            However, there are only four such individuals, which makes little difference to these charts.

# 2. Analysis
# 2.1 Multiple Prize Winners
# -> We can retrieve those laureates who won more than one prize by selecting records,
#    where 'nobels$laureates$prizes' has more than one row.
multi <- which(sapply(nobels$laureates$prizes, function(x) nrow(x)) > 1)
winners <- nobels$laureates[multi, c("firstname", "surname", "born", "bornCountry")]
print(xtable(winners), type = "html", comment = FALSE, include.rownames = FALSE)

# Result of Analysis.
# Four individuals have won two prizes:
#  1. Marie Curie (physics, chemistry);
#  2. John Bardeen (physics);
#  3. Linus Pauling (chemistry, peace);
#  4. Frederick Sanger (chemistry).

# 2.2 Gender
# -> Counting up prizes by gender reveals the huge gender gap in Nobel Laureates.
gender <- as.data.frame(table(nobels$laureates$gender), stringsAsFactors = FALSE)
ggplot(gender) + geom_bar(aes(Var1, Freq), stat = "identity", fill = "skyblue3") +
  theme_bw() +
  labs(x = "Gender", y = "Count", title = "All Nobel Prizes by Gender")

# Result of Analysis.
# Nobel Prize Awarded to Women!
# The Nobel Prize and Prize in Economic Sciences have been awarded to women 49 times between 1901 and 2015.
# Only one woman, Marie Curie, has been honoured twice, with the 1903 Nobel Prize in Physics and the 1911 Nobel Prize in Chemistry.
# This means that 48 women in total have been awarded the Nobel Prize between 1901 and 2015.
# √ 26 are organizations and rest of laureates are male.

# 2.3 Gender by Category
# -> Chemestry/Economics/Literature/Medicine + Physiology/Peace/Physics
cnt <- sapply(nobels$laureates$prizes, function(x) nrow(x))
prizes <- ldply(nobels$laureates$prizes, as.data.frame)
prizes$id <- rep(nobels$laureates$id, cnt)
prizes$gender <- rep(nobels$laureates$gender, cnt)
pg <- as.data.frame(table(prizes$category, prizes$gender), stringsAsFactors = FALSE)
ggplot(pg) + geom_bar(aes(Var1, Freq), stat = "identity", fill = "skyblue3") +
  theme_bw() +
  facet_grid(Var2 ~ .) + labs(x = "Category", y = "Count", title = "All Nobel Prizes by Gender and Category")

# 2.4 Gender over Time
# -> Is there any indication of an increase in female laureates over time?
p5 <- as.data.frame(table(prizes$year, prizes$gender), stringsAsFactors = FALSE)
colnames(p5) <- c("year", "gender", "Freq")
p5.1 <- mutate(group_by(p5, gender), cumsum = cumsum(Freq))
ggplot(subset(p5.1, gender != "org")) + geom_point(aes(year, log(cumsum), color = gender)) +
  theme_bw() +
  scale_x_discrete(breaks = seq(1900, 2015, 10)) +
  scale_color_manual(values = c("darkorange", "skyblue3")) +
  labs(x = "Year", y = "log(cumulative sum) of laureates", title = "Cumulative Sum of Nobel Laureates by Gender over Time")

# There is some indication that since about 1975, more women have won prizes than in the preceding years.
# -> What if we subset by category?
p6 <- as.data.frame(table(prizes$year, prizes$category, prizes$gender), stringsAsFactors = FALSE)
colnames(p6) <- c("year", "category", "gender", "Freq")
p6.1 <- mutate(group_by(p6, category, gender), cumsum = cumsum(Freq))
ggplot(subset(p6.1, gender != "org")) + geom_point(aes(year, log(cumsum), color = gender)) +
  facet_grid(category ~ .) +
  theme_bw() +
  scale_x_discrete(breaks = seq(1900, 2015, 10)) +
  scale_color_manual(values = c("darkorange", "skyblue3")) +
  labs(x = "Year", y = "log(cumulative sum) of laureates",
       title = "Cumulative Sum of Nobel Laureates by Gender and Category over Time")
