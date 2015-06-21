
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

convert <- function(c,m) { 
  if (m==TRUE) c * 1.13645
  else c / 1.13645
}
shinyServer(
  function(input, output) {
    output$entrada <- renderPrint({input$c})
    output$salida <- renderPrint({convert(input$c,input$checkbox)})
  }
)

