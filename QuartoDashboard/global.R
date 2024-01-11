# install and load the DT package for nice tables with pagination and search
if (!requireNamespace("DT")) 
  install.packages("DT")
library(DT)

if (!requireNamespace("RSQLite")) 
  install.packages("RSQLite")
library(RSQLite)

# Package for showing timelines
if (!requireNamespace("vistime")) 
  install.packages("vistime")
library(vistime)

if (!requireNamespace("quarto")) 
  install.packages("quarto")
library(quarto)

if (!requireNamespace("plotly")) 
  install.packages("plotly")
library(plotly)

con <- dbConnect(drv=RSQLite::SQLite(), dbname="ICA_2023.sqlite")

customers <- dbGetQuery(con,'SELECT * FROM Customers;')
developers <- dbGetQuery(con,'SELECT * FROM Developers;')
projects <- dbGetQuery(con,'SELECT * FROM Projects;')
assets <- dbGetQuery(con,'SELECT * FROM Assets;')