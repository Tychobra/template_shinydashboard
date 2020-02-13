function(input, output, session) {

  output$debuggin <- renderPrint({
    "Hello Dashboard. `renderPrint` is useful for debugging. test"
  })
  
  filtered <- reactive({
    if (is.null(input$countryInput)) {
      return(NULL)
    }   
    bcl %>%
      filter(Price >= input$priceInput[1],
             Price <= input$priceInput[2],
             Type == input$typeInput,
             Country == input$countryInput)
  })
  
  output$countryOutput <- renderUI({
    selectInput("countryInput", "Country",
                sort(unique(bcl$Country)),
                selected = "UNITED STATES OF AMERICA")
  })
  
  output$coolplot <- renderPlot({
    if (is.null(filtered())) {
      return()
    }
    ggplot(filtered(), aes(Alcohol_Content)) +
      geom_histogram()
  })
  
  output$results <- renderTable({
    filtered()
  })
  
  observe({ print(input$priceInput) })
  observe({ print(priceDiff()) })
  priceDiff <- reactive({
    diff(input$priceInput)
  })
}
