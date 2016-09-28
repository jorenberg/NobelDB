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
