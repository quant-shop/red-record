
library(shiny)
library(remotes)
remotes::install_github("professornaite/critstats", force=TRUE)
library(critstats)

# Define UI 
ui <- fluidPage(
  selectInput("dataset", label = "Dataset", choices = ls("package:critstats")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)

# Define server 
server <- function(input, output, session) {
  # Create a reactive expression
  dataset <- reactive({
    get(input$dataset, "package:critstats")
  })
  
  output$summary <- renderPrint({
    # Use a reactive expression by calling it like a function
    summary(dataset())
  })
  
  output$table <- renderTable({
    dataset()
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
