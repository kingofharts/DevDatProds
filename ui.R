library(shiny)
library(ggplot2)

dataset <- mtcars

shinyUI(pageWithSidebar(
      
      headerPanel("Use this tool to zero in on Cars from 'mtcars' that fit your criteria, then compare them by other variables!"),
      
      sidebarPanel(
            h3('Set filter thresholds and chart orientation here!'),
            sliderInput('minMPG', 'Minimum Fuel Efficiency, MPG', min=10, max=35,
                        value=10),
            sliderInput('maxQSEC', 'Maximum Quarter Mile Time, Seconds', min=14, max=23,
                        value=23),
            
            selectInput('x', 'X', names(dataset), names(dataset)[[3]]),
            selectInput('y', 'Y', names(dataset), names(dataset)[[4]]),
            checkboxInput('readyLabel', 'Check when ready to add labels!')
            
      ),
      
      mainPanel(
            h3('Here are your options!'),
            plotOutput('plot')
      )
))
