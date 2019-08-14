function(input, output, session) {

  output$debuggin <- renderPrint({
    "Hello Dashboard. `renderPrint` is useful for debugging"
  })
}