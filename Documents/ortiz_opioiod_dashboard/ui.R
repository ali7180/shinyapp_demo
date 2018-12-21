
dashboardPage(
  dashboardHeader(title = "Opioid Date"),
  dashboardSidebar(
    sidebarMenuOutput("test")
  ),
    
  dashboardBody(
    
    navbarPage("Relationship between Opioid Deaths and State Population",
               tabPanel("Plot",
                        sidebarLayout(
                          sidebarPanel(
                            radioButtons("plotType", "Plot type",
                                         c("Scatter"="p", "Line"="l")
                            )
                          ),
                          mainPanel(
                            plotOutput("plot")
                          )
                        )
               ),
               tabPanel("Summary",
                        verbatimTextOutput("summary")
               ),
               navbarMenu("More",
                          tabPanel("Table",
                                   DT::dataTableOutput("table")
                          )
                          
               )
    )
    
    
    
    
    
  )
)






