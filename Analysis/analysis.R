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
