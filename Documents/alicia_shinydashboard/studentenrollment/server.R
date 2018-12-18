


function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- enrollmentnumbers
    if (input$DISTRICT != "All") {
      data <- data[data$DISTRICT == input$DISTRICT,]
    }
    if (input$SCHOOL != "All") {
      data <- data[data$SCHOOL == input$SCHOOL,]
    }
    if (input$GRADE != "All") {
      data <- data[data$GRADE == input$GRADE,]
    }
    if (input$RACE != "All") {
      data <- data[data$RACE == input$RACE,]
    }
    if (input$GENDER != "All") {
      data <- data[data$GENDER == input$GENDER,]
    }
    data
  }))
  # Downloadable csv of selected dataset ----
  output$downloadData <- downloadHandler(
    filename = function() {
      paste(input$data, ".csv", sep = "")
    },
    content = function(file) {
      write.csv(data(), file, row.names = FALSE)
    }
  )
  
  datasetInput <- reactive({
    switch(input$data,
           "DISTRICT" = DISTRICT,
           "SCHOOL" = SCHOOL,
           "RACE" = RACE)
  
  
  
})}
  


  

