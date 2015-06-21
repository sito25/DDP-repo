
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Currency calculator"),
    sidebarPanel(
      numericInput('c', 'Euro or US Dollars', 1, min = 1, max = 500, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      checkboxInput("checkbox", label = "Convert from euros to dollars", value = FALSE),
      h3('Results'),
      h4('You entered (default dollar)'),
      verbatimTextOutput("entrada"),
      h4('Which resulted in the next amount of money (default euros)'),
      verbatimTextOutput("salida")
    )
  )
)

