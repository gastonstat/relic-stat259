# Interactive Documents with R Shiny

Shiny is an R package that does two things:

1. Creates __reactive__ R objects
2. Builds HTML web pages

---

Open an interactive document in RStudio:

1. Go to __File__, click __New File__, then choose __R Markdown...__
2. Select __Shiny__, then __Shiny Document (default)__
3. Delete everything under the second `---`


### Reactive objects

Shiny provides two major types of reactive objects:

1. __Widgets__: let users set a value by typing, clicking, etc.
2. __Rendered__: respond whenever a widget value changes


### Creation of Widgets

Create a widget with a widget function. Since the function is R code, you'll need to put it in a code chunk

| Function        | Widget                                     |
| --------------- | ------------------------------------------ |
| actionButton    | Action Button                              |
| checkboxGroupIn | Group of checkboxes                        |
| checkboxInput   | Single checkbox                            |
| dateInput       | Calendar to aid date selection             |
| dateRangeInput  | Pair of calendars for selecting date range |
| fileInput       | File upload control wizard                 |
| helpText        | Help text to accompany other widgets       |
| numericInput    | Field to enter numbers                     |
| radioButtons    | Set of radio buttons                       |
| selectInput     | Box with choices to select from            |
| sliderInput     | Slide bar                                  |
| submitButton    | Submit button                              |
| textInput       | Field to enter text                        |

More info at: [Shiny Widgets Gallery](http://shiny.rstudio.com/gallery/widget-gallery.html)

----

### Practice

Write the text of your document and add the following content:

```R
---
runtime: shiny
output: html_document
---

## What's in a name?

Please select a name to explore.

```{r echo=FALSE}
textInput("name", "Name:", value = "Donald")
```

Here is a graph of the number of people named `TO DO`.
`TO DO`

`TO DO` was more popular than ever in `TO DO`. 
So far, `TO DO` people havebeen named `TO DO`.
```

