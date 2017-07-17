function(input, output, session) {
  output$debuggin <- renderPrint({
    "Hello Dashboard. This output style is helpful for to debugging"
  })
}