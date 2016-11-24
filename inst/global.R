# Copyright (c) 2014 Clear Channel Broadcasting, Inc. 
# https://github.com/iheartradio/ShinyBuilder
# Licensed under the MIT License (MIT)
# detach(package:shiny)
# detach(package:stringr)
# detach(package:googleVis)
# detach(package:shinyGoogleCharts)
# #detach(package:RJDBC)
# detach(package:RJSONIO)
# detach(package:RSQLite)
# detach(package:shinyAce)
# detach(package:shinyMCE)
# detach(package:shinyGridster)
# detach(package:ShinyBuilder)


#---------
#Libraries
#---------
library(shiny)
library(stringr)
library(googleVis)
#library(shinyGoogleCharts)
#library(RJDBC)
library(RJSONIO)
library(RSQLite)
library(shinyAce)
library(shinyMCE)
library(shinyGridster)
library(ShinyBuilder)



source(system.file('googleChart.R', package = 'ShinyBuilder'))

#DB list
db_list <- dbListInit()

#Shinybuilder directory
sb_dir <- system.file('', package = 'ShinyBuilder')
sb_dir <- '/home/rstudio/ShinyApps/ShinyBuilder/inst/'

#Available dashboards
available_dashboards <- str_replace(list.files(path = file.path(sb_dir,'dashboards')), '.RData', '')



