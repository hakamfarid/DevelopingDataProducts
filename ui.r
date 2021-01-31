library(shiny)
shinyUI(fluidPage(


    titlePanel("Cars Dataset - Miles per Gallon"),

    sidebarPanel(

        selectInput("variable", "Variable:",
                    c("Sepal" = "Sepal.Length",
                      "Petal" = "Petal.Length"
                      ))
    ),

    mainPanel(

        h3(textOutput("caption")),


        plotOutput("mpgPlot")
    )
))
