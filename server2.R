library(shiny)
# Define server logic required to draw a histogram

cadata = read.csv("App2/data/New-ca-121314.csv", header = TRUE)
options(RCHART_WIDTH = 500)

shinyServer(function(input, output) {
    
    output$lexplot <- renderChart2({
      selectedjobtitle <- input$jtitle
     # job <- subset(cadata, LCA_CASE_JOB_TITLE == selected)
      
      h1 <- hPlot(
        x = "LCA_CASE_WAGE_RATE_FROM", 
        y = "LCA_CASE_JOB_TITLE", 
        data = job, 
        type = "line")
      
      h1$colors(c("red", "blue"))
      h1$yAxis(title = list(enabled = TRUE, text = 'Job Title'))
      return(h1)
      
    })
    

  
})