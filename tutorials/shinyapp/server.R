library(babynames)
library(ggplot2)

shinyServer(function(input, output) {
  names <- reactive({
    subset(babynames, name == input$name)
  })
  
  output$trend <- renderPlot({
    ggplot(data = names(), aes(x = year, y = n, color = sex)) +
      geom_line() + 
      theme_bw()
  })
  
  output$total <- isolate(sum(names()$n))

#   output$total <- renderText({
#     sum(names()$n)
#   })
  
  output$peak <- renderText({
    names()$year[which.max(names()$n)]
  })
  
})
