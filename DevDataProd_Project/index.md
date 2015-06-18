---
title       : MPG Prediction
subtitle    : With Mtcars Data
author      : Yining Qi
job         : Student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Why predict?

MPG is the abbreviation of miles per (US) gallon, which is the indicator of the fuel consumption of the cars. 
### Why do you need the MPG value?
1. Saving money.
2. For Better environment.

--- .class #id

## Dataset from R Package: mtcars

```mtcars``` is a classical dataset provided in the R package {datasets}. It contains data of different kinds of cars and we can train a model with the data conveniently. Particularly, in mtcars, "wt" means weight, and "am" means transmission(auto-matic/manual), which are the two main predictors in the model.

```
## 'data.frame':	32 obs. of  11 variables:
##  $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
##  $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
##  $ disp: num  160 160 108 258 360 ...
##  $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
##  $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
##  $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
##  $ qsec: num  16.5 17 18.6 19.4 17 ...
##  $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
##  $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
##  $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
##  $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

--- .class #id

## Building the Model

### Method: Random Forest

We choose the method of random forest to build the predicting model.

Random forests are an ensemble learning method for classification, regression and other tasks, that operate by constructing a multitude of decision trees at training time and outputting the class that is the mode of the classes (classification) or mean prediction (regression) of the individual trees. 

Random forests correct for decision trees' habit of overfitting to their training set.(From [Random forest-Wiki](https://en.wikipedia.org/wiki/Random_forest))

### Model: Interaction between weight and transmission

We train the model, considering that there is interaction between weight and transmission. 

--- .class #id

## Using the App

We provide prediction with weight ranging from 1.5 klbs to 5.5 klbs, and an option to decide whether the car is manual or not. 

You may find that some prediction values have minor differences with original ones. That is because the impact of noise. But we consider that the differences are not very big that they can be acceptable.

--- .class #id
