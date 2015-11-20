library(shiny)
shinyUI(
    pageWithSidebar(
    headerPanel("Monthly Mortgage Calculator for Fixed-rate Loan"),
    sidebarPanel(
        numericInput('id_principal', 'Principal', 0, min = 150000, max = 2000000, step = 25000),
        numericInput('id_interest', 'Interest Rate(%)', 0, min = 0, max = 100, step = 0.2),
        checkboxGroupInput("id_years", "Loan Term(years)",
                           c("5 years" = 5,
                             "15 years" = 15,
                             "30 years" = 30)),
        submitButton('Submit')
    ),
    mainPanel(
        h3('Recap'),
        h4('You entered Principal as'),
        verbatimTextOutput("oid_principal"),
        h4('You entered interest rate as'),
        verbatimTextOutput("oid_interest"),
        h4('You entered years as'),
        verbatimTextOutput("oid_years"),
        h4('Your monthly mortgage is'),
        verbatimTextOutput("oid_mortgage")
        
    )
))
