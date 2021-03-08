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
    title="Funhub.life Verifier",
    tags$head(tags$link(rel="shortcut icon",
                        href="https://www.noaa.gov/sites/all/themes/custom/noaa/favicon.ico",
                        type="image/vnd.microsoft.icon")),
        tabsetPanel(
            tabPanel("Verify Control", actionButton("button","button",icon=NULL)),
            tabPanel("History", ""),
            tabPanel("My Account", ""),
            tabPanel("FAQ", "")
        )
    )


# Define server logic required to draw a histogram
server <- function(input, output) {


    observeEvent(input$button,{
        f<-getwd()
        autoit<-paste0(f,"/dep/autoit/install/autoit3 /AutoIt3ExecuteLine ")
        script<-''
        system(paste(autoit,script))
        system(paste0('"C:/Program Files/Google/Chrome/Application/chrome.exe " ',"--new-window --app=","data:text/html,<html><body><script>window.moveTo(0,500);window.resizeTo(400,600);window.location='http://localhost:15000';</script></body></html>"))
        cat("test script executed")

    })
}

# Run the application
shinyApp(ui = ui, server = server,options=list(port=15000L))
