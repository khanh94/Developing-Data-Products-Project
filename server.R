library(shiny)

shinyServer(function(input, output){
  
  independentData = reactive({
    c(input$x1, input$x2, input$x3, input$x4, input$x5)
  })

  dependentData = reactive({
    c(input$y1, input$y2, input$y3, input$y4, input$y5)
  })

  output$Plot = renderPlot({
    if(input$submit > 0){
    plot(independentData(), dependentData(), main='Least Squares Regression', xlab='Independent variable', ylab='Dependent variable') 
    reg = lm(dependentData()~independentData())
    abline(reg)
    } 
  })
  
  output$Summary = renderPrint({
    if(input$submit > 0){
      model=lm(dependentData()~independentData())
      summary(model)
    }
  })
})
