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

if (!requireNamespace("maps")) 
  install.packages("maps")
library(maps)

if (!requireNamespace("europop")) 
  install_github("mdlincoln/europop")
library(europop)

if (!requireNamespace("fuzzyjoin")) 
  install.packages("fuzzyjoin")
library(fuzzyjoin)

if (!requireNamespace("stringdist")) 
  install.packages("stringdist")
library(stringdist)

con <- dbConnect(drv=RSQLite::SQLite(), dbname="ICA_2023.sqlite")

customers <- dbGetQuery(con, 'SELECT * FROM Customers;')
developers <- dbGetQuery(con, 'SELECT * FROM Developers;')
projects <- dbGetQuery(con, 'SELECT * FROM Projects;')
assets <- dbGetQuery(con, 'SELECT * FROM Assets;')
customerCityBudgets <- dbGetQuery(con, '
SELECT
  CustomerName,
  CustomerCity AS City,
  CustomerCountry AS Country,
  Budget
FROM Customers Join Projects P on Customers.CustomerID = P.CustomerID')