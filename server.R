function(input, output, session) {
  callModule(profile_icon, "prof")
  output$debuggin <- renderPrint({
    "Hello Dashboard. `renderPrint` is useful for debugging"
  })
}