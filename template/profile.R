
profile_icon <- function(input, output, session) {
  output$auth_user <- renderText({
    if (is.null(session$user)) {
      "Guest"
    } else {
      session$user
    }
  }) 
}

profile_icon_ui <- function(id) {
  ns <- NS(id)
  
  tags$li(
    class = "dropdown",
    tags$a(
      href="#",
      class = "dropdown-toggle",
      `data-toggle` = "dropdown",
      tags$i(
        class = "fa fa-user"
      )
    ),
    tags$ul(
      class = "dropdown-menu",
      tags$li(
        textOutput(ns("auth_user")), 
        style='padding: 3px 20px;'
      ),
      tags$li(
        a(
          icon("sign-out"), 
          "Logout", 
          href="__logout__"
        )
      )
    )
  )
}
