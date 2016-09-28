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
