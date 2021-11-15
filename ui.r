#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyhelper)
library(dplyr)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    titlePanel("US State Data"),
    sidebarPanel(
      selectInput("state_name", "Select the name of the state to view the corresponding data", state.name, selected = NULL),
    ),
    mainPanel(
      textOutput("name"),
      textOutput("code"),
      textOutput("division"),
      textOutput("region"),
      textOutput("area"),
      textOutput("avg_area"),
      textOutput("latitude"),
      textOutput("longitude")
      )
  )
)

