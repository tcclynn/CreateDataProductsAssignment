library(shiny)

monthlyMortgage <- function(principal,interest,years) {
    years = as.numeric(years)
    int = interest / 12 / 100
    n = years * 12
    int0 = (1+int)^n
    int1 = int*int0  
    int2 = int0 - 1
    M = principal * int1 / int2
    return(M)
}


shinyServer(
    function(input, output) {
        output$oid_principal <- renderPrint({input$id_principal})
        output$oid_interest <- renderPrint({input$id_interest})
        output$oid_years <- renderPrint({input$id_years})
        output$oid_mortgage <- renderPrint({monthlyMortgage(input$id_principal,
                                                            input$id_interest,
                                                            input$id_years)})
    }
)
