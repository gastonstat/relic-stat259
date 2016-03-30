# Web Apps with R Shiny

Shiny is an R package that does two things:

1. Creates __reactive__ R objects
2. Builds HTML web pages

In this tutorial, we'll see how to generate a __shiny app__ to produce an 
interactive visualization to see the trend of your name.


### Practice

Make sure you have installed the R packages `"ggplot2"` and `"babynames"`.

We'll be working with the data set `"babynames"`. Open a regular R script file and
add the following code (change your name!)
```R
library(babynames)

# subset babynames with your name
myname <- subset(babynames, name == "Gaston")

# find the most popular year for your name
myname$year[which.max(myname$n)]

# number of people with your name so far
sum(myname$n)
```

Now let's make a plot to see the trend of your name
```R
library(ggplot2)
ggplot(data = myname, aes(x = year, y = n, color = sex) +
  geom_line() + 
  theme_bw()
```

---

## About Shiny

Shiny is an R package that does two things:

1. Creates __reactive__ R objects
2. Builds HTML web pages


### Reactive objects

Shiny provides two major types of reactive objects:

1. __Widgets__: let users set a value by typing, clicking, etc.
2. __Rendered__: respond whenever a widget value changes


### Creation of Widgets

Create a widget with a widget function. Since the function is R code, you'll need to put it in a code chunk

| Function        | Widget                                     |
| --------------- | ------------------------------------------ |
| `actionButton()`   | Action Button                              |
| `checkboxGroupIn()` | Group of checkboxes                        |
| `checkboxInput()`   | Single checkbox                            |
| `dateInput()`       | Calendar to aid date selection             |
| `dateRangeInput()`  | Pair of calendars for selecting date range |
| `fileInput()`       | File upload control wizard                 |
| `helpText()`        | Help text to accompany other widgets       |
| `numericInput()`    | Field to enter numbers                     |
| `radioButtons()`    | Set of radio buttons                       |
| `selectInput()`     | Box with choices to select from            |
| `sliderInput()`     | Slide bar                                  |
| `submitButton()`    | Submit button                              |
| `textInput()`       | Field to enter text                        |

More info about widgets at: [Shiny Widgets Gallery](http://shiny.rstudio.com/gallery/widget-gallery.html)


Below is a list with the available render functions in Shiny:

| Function            | Creates           |
| ------------------- | ----------------- |
| `renderDataTable()` |	An interactive table |
| `renderImage()`     |	An image (saved as a link to a source file) |
| `renderPlot()`      |	A plot            |
| `renderPrint()`     |	A code block of printed output |
| `renderTable()`     |	A table            |
| `renderText()`      |	A character string |


-----

### Shiny App

To produce a shiny app, create a new folder (name it as you want) and open two R script files with the following names (you must use these exact names):

1. `ui.R`
2. `server.R`

The file `server.R` contains all of the instructions (R code) your app needs
to build its rendered outputs. `server.R` __always__ includes the following code:
```R
shinyServer(function(input, output) {
	# your code here
})
```

The file `ui.R` builds the web page that displays your widgets and rendered output.
In this file you:

- create the layout (placing layout functions)
- place widgets and output
- add html elements (optional)

The best place for understanding the layout system provided by Shiny is the 
[Application layout guide](http://shiny.rstudio.com/articles/layout-guide.html)

Below is a list with some of the layout functions for a Shiny App:

| Function            | Creates           |
| ------------------- | ----------------- |
| `fluidPage()`       |	Creates a page with fluid layout|
| `titlePanel()`      |	Creates a panel containing an application title. |
| `sidebarLayout()`   |	Layout a sidebar and main area           |
| `sidebarPanel()`    |	Creates a sidebar panel |
| `mainPanel()`       |	Creates a main panel            |
| `tabsetPanel()`     |	Creates a tabset panel |

More layout functions at: [http://shiny.rstudio.com/reference/shiny/latest/](http://shiny.rstudio.com/reference/shiny/latest/)

