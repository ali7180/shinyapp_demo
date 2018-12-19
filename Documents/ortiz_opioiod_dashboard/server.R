



server<-function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- tnopiods
    if (input$County != "All") {
      data <- data[data$County == input$County,]
    }
    if (input$Labor_force != "All") {
      data <- data[data$Labor_force == input$Labor_force,]
    }
    if (input$Employed != "All") {
      data <- data[data$Employed == input$Employed,]
    }
    if (input$Unemployed != "All") {
      data <- data[data$Unemployed == input$Unemployed,]
    }
    if (input$Opioid_Death_Cumal != "All") {
      data <- data[data$Opioid_Death_Cumal == input$Opioid_Death_Cumal,]
    }
    data
  }))
}
 
  
#shinyApp(ui, server)
