
shinyUI(fluidPage(
  titlePanel("Salary Trends"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Select your parameters to explore salary trends!"),
      
      selectInput("jtitle", 
                  label = "Job Title",
                  choices = list("Analyst", "Software Engineer", "Technical Architect",
                                 "Product Manager", "Test Engineer"),
                  selected = "Analyst"),
      
      sliderInput(inputId = "range", 
                  label = "Range of interest",
                  min = 0, max = 100, value = 0),
      checkboxInput("checkbox", label = "Check for other cities", value = TRUE),
      hr(),
      fluidRow(column(4, verbatimTextOutput("value")))
    ),
    
    ##checkboxInput("checkbox", label = "Show results for other cities", value = TRUE),
    
    mainPanel(
      textOutput("text1")
    )
  )
))


