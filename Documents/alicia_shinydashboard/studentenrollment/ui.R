fluidPage(
  titlePanel("Tennessee Student Enrollment 2017-18"),
  
  # Create a new Row in the UI for selectInputs
  fluidRow(
    column(4,
           selectInput("DISTRICT",
                       "DISTRICT:",
                       c("All",
                         unique(as.character(enrollmentnumbers$DISTRICT))))
    ),
    column(4,
           selectInput("SCHOOL",
                       "SCHOOL:",
                       c("All",
                         unique(as.character(enrollmentnumbers$SCHOOL))))
    ),
    column(4,
           selectInput("GRADE",
                       "GRADE:",
                       c("All",
                         unique(as.character(enrollmentnumbers$GRADE))))
    ),
    column(4,
           selectInput("RACE",
                       "RACE:",
                       c("All",
                         unique(as.character(enrollmentnumbers$RACE))))
    ),
    column(4,
           selectInput("GENDER",
                       "GENDER:",
                       c("All",
                         unique(as.character(enrollmentnumbers$GENDER)))),
           # Button
           downloadButton("downloadData", "Download")
    ),
  # Create a new row for the table.
  DT::dataTableOutput("table")
))