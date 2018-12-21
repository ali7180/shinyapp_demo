function(input, output, session) {
  output$plot <- renderPlot({
    ggplot(tnopiods,aes(x=Deaths,y=Population, color=State, fill=State))+geom_point() + ggtitle("Relaationship between State and Opioid Deaths - 2014") +
      xlab("Deaths") + ylab("Population(per_capita)"+ scale_y_continuous(labels = scales::comma))
  })
  
  output$summary <- renderPrint({
    summary(tnopiods)
  })
  
  output$menu <- renderMenu({
    sidebarMenu(
      menuItem("Menu item", icon = icon("calendar"))
    )
  })
  
 
  output$table <- DT::renderDataTable({
    DT::datatable(tnopiods)
  })
}


