DevDataProdsApp
========================================================
author: Nicholas Paul Hartman
date: 21 August 2014

App Overview
========================================================

I wrote a super-simple pivot chart app.  I modeled it off
the example app provided by shinyapps.io with sufficient changes
to demonstrate competency with the underlying code.  The app:

- Presents a chart of each individual car in the mtcars set
- Allows the user to re-axis the chart by variables in the data set
- Allows the user to filter by minimum fuel efficiency
- Allows the user to filter by maximum quarter-mile time in seconds
- Allows the user to toggle data point labels on and off

General Usage
========================================================

The thought behind this arrangement of the app is to provide the ability
to filter by common high priority car attributes (What fuel efficiency 
do I need?  How fast do I want the car to be?), plot by two more 
important variables (engine displacement, auto/manual trans, etc.), and
then opt to show what model each car is within that narrowed, replotted
arrangement.  It's sort of a shopping assistance tool.

Why The App Satisfies the Assignment Criteria
========================================================

- The interface uses three different types of input widgets (check box, slider, drop down)
- The chart and data filtration formula are reactive
- A modification/calculation is made using the source dataset.  Specifically, the dataset is filtered twice, once using a minimum value and once a maximum, by user-adjustable parameters.
- Use-documentation is provided in the header box of the app (not rocket science)
- While yes, this is really simple and modeled on an example, I have modified the code in material ways to demonstrate my competency.  I have a full time job and family, not aiming for the moon just yet!

Why This Presentation Satisfies the Criteria
========================================================


```r
paste("This presentation is 5 slides long and contains processed R code!")
```

```
[1] "This presentation is 5 slides long and contains processed R code!"
```
- The presentation includes a description of the app's purpose and functionality
- This was done in R presenter
- You are currently viewing this as a hosted presentation on github!

I believe this has demonstrated adequate competency of the material.  Any thoughts or constructive feedback, please let me know in the comments!

