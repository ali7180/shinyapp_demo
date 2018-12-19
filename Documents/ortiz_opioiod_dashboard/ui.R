
ui <- dashboardPage(
  dashboardHeader(title = "Tennessee Opioid Factors"),
  dashboardSidebar(),
  dashboardBody(
    fluidRow( box(width = 12,
      column(4,
             selectInput("County",
                         "County:",
                         c("All",
                           unique(as.character(tnopiods$County))))
      ),
      column(4,
             selectInput("Labor_force",
                         "Labor_force:",
                         c("All",
                           unique(as.character(tnopiods$Labor_force))))
      ),
      column(4,
             selectInput("Employed",
                         "Employed:",
                         c("All",
                           unique(as.character(tnopiods$Employed))))
      ),
      column(4,
             selectInput("Unemployed",
                         "Unemployed:",
                         c("All",
                           unique(as.character(tnopiods$Unemployed))))
      ),
      column(4,
             selectInput("Opioid_Death_Cumal",
                         "Opioid_Death_Cumal:",
                         c("All",
                           unique(as.character(tnopiods$Medicare_Enrollment)))),
             # Button
             downloadButton("downloadData", "Download")
      )),
      # Create a new row for the table.
      DT::dataTableOutput("table")
    ))
)