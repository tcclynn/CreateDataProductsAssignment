Reproducible Pitch Presentation
========================================================
author: Ching Ching Tan
date: November 21st, 2015
transition: rotate

Monthly Mortage Calculator For Fixed-rate Loan
========================================================

Imagine that you are planning to buy your first home and 
want to have a rough idea of your monthly cost. 

Let's look at the estimated monthly payments on a 
fixed-rate mortgage using the Shiny App: 
**Monthly Mortgage Calculator for Fixed-rate Loan**   

Click here to access the [Shiny App][id]:
[id]: https://tcclynn.shinyapps.io/ProjectCreateDataProduct


Monthly Mortgage Calculator for Fixed-rate Loan
========================================================
![Monthly Mortgage Calculator][id1]
[id1]: CreateDataProductsAssignment-figure/MortgageCalculator.png

Sample Monthly Mortgage Calculation
========================================================


```r
principal = 250000
years = 30
dur = 30 * 12
int = 2.99 / 100 / 12
monthlyMortgage = principal * int*(1+int)^dur / ((1+int)^dur - 1)
monthlyMortgage    
```

```
[1] 1052.662
```


References:
========================================================
1. https://en.wikipedia.org/wiki/Fixed-rate_mortgage
2. http://homeguides.sfgate.com/calculate-payments-fixed-rate-mortgage-2963.html
3. https://support.rstudio.com/hc/en-us/articles/200486468-Authoring-R-Presentations
