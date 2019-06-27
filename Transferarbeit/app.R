#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Steht die Lebenserwartung im Zusammenhang mit dem BIP pro Kopf?"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        library(gapminder)
        attach(gapminder)
        plot(x=lifeExp,y=log(gdpPercap),main="", xlab="Lebenserwartung in Jahren",ylab="BIP pro Kopf", col="black")
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
