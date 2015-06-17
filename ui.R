library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("MPG prediction"),
    sidebarPanel(
      h3('Choose the auto-matic car or the manual one: '),
      checkboxInput("am", "My car is manual.", value = FALSE),
      h3('Put in the weight value: '),
      sliderInput('wt', 'Weight lb/1000', value = 3.20, min = 1.50, max = 5.50, step = 0.01, )
    ),
    mainPanel(
      h3('Results of Prediction'),
      h4('We know the miles per (US) gallon value of cars has a relationship with weight and transmission. Now predict the mpg with the two values, using the data from mtcars data set.'), 
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)