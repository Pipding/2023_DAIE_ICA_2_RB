# install and load the DT package for nice tables with pagination and search
if (!requireNamespace("DT")) 
  install.packages("DT")
library(DT)

if (!requireNamespace("RSQLite")) 
  install.packages("RSQLite")
library(RSQLite)

con <- dbConnect(drv=RSQLite::SQLite(), dbname="ICA_2023.sqlite")

customers <- dbGetQuery(con,'SELECT * FROM Customers;')
developers <- dbGetQuery(con,'SELECT * FROM Developers;')
projects <- dbGetQuery(con,'SELECT * FROM Projects;')
assets <- dbGetQuery(con,'SELECT * FROM Assets;')