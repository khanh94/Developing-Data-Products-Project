library(shiny)

shinyUI(fluidPage(
  
  #Application title
  titlePanel("Linear Regression App"),
  
  sidebarLayout(
    
    sidebarPanel(
      numericInput('x1', "x1", value = 4),
      numericInput('x2', 'x2', value = 0),
      numericInput('x3', 'x3', value = 0),
      numericInput('x4', 'x4', value = 0),
      numericInput('x5', 'x5', value = 0),
      
      numericInput('y1', 'y1', value = 0),
      numericInput('y2', 'y2', value = 0),
      numericInput('y3', 'y3', value = 0),
      numericInput('y4', 'y4', value = 0),
      numericInput('y5', 'y5', value = 0),
      
      actionButton('submit', 'Go')
    ),
  
    
    mainPanel(
      plotOutput('Plot'),
      headerPanel('Summary'),
      verbatimTextOutput('Summary')
    )  
  )
))