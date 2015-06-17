library(shiny)
library(datasets)
library(caret)
library(randomForest)
data(mtcars)
fit <- train(mpg ~ wt*factor(am), data = mtcars)
mpgPrediction <- function(x1, x2){
  if(x2 == TRUE){
    y <- 1
  }
  else{
    y <- 0
  }
  round(predict(fit, data.frame(wt = x1, am = y)), 1)
}
shinyServer(
  function(input, output) {
    pred <- reactive({mpgPrediction(input$wt, input$am)})
    output$prediction <- renderPrint({pred()})
  }
)