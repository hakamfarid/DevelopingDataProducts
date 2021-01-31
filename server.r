library(shiny)
library(plotly)

mpgData <- iris

shinyServer(function(input, output) {

    formulaText <- reactive({
        paste("Sepcies vs ", input$variable)
    })

    output$caption <- renderText({
        formulaText()
    })
    output$mpgPlot <- renderPlot({
        ggplot(mpgData, aes_string(y=input$variable, x="Species")) + geom_point()
    })


})
