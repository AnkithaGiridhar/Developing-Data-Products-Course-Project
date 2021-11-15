library(shiny)
library(datasets)
library(shinyhelper)

shinyServer(
  function(input, output, session) {
  # Generate a summary of the dataset
    output$name <- renderText({paste('State Name:',input$state_name)})
    output$code <- renderText({
      paste('State Code:',
            state.abb[which(state.name==input$state_name)])
    })
    output$division <- renderText({
      paste('State Division:',
            state.division[which(state.name==input$state_name)])
    })
    output$region <- renderText({
      paste('State Region:',
            state.region[which(state.name==input$state_name)])
    })
    output$latitude <- renderText({
            paste("Geographic Center Latitude:", state.center$x[which(state.name==input$state_name)])
    })
    output$area<- renderText({
      paste("Area:", state.area[which(state.name==input$state_name)])
    })
    output$avg_area <- renderText({
      paste("Average Area in the Region:", mean(state.area[which(state.region== state.region[which(state.name==input$state_name)])]))
    })
    output$longitude <- renderText({
      paste("Geographic Center Longitude:", state.center$y[which(state.name==input$state_name)])
    })
    output$longitude <- renderText({
      paste("Geographic Center Longitude:", state.center$y[which(state.name==input$state_name)])
    })
    output$demographic <- renderDataTable({
      state.x77[input$state_name,]
    })
  
})