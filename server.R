library(shiny)
library(ggplot2)

data(mtcars)
mtcars$car <- rownames(mtcars)

shinyServer(function(input, output) {
      
      dataset <- reactive(function() {
            dataset <- mtcars[mtcars$mpg>=input$minMPG,]
            dataset <- dataset[dataset$qsec<=input$maxQSEC,]
      })

      
      output$plot <- reactivePlot(function() {
            
            p <- ggplot(dataset(), aes_string(x=input$x, y=input$y)) + geom_point()
            
            if(input$readyLabel)
                  p <- p + geom_text(aes(label=car),size=4,vjust=-1.5)
            
            print(p)
            
      }, height=450)
      
})