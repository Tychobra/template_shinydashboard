tags$li(
  class = "dropdown",
  tags$a(
    href="#",
    class = "dropdown-toggle",
    `data-toggle` = "dropdown",
    div(
      tags$i(
        class = "fa fa-phone"
      ),
      " Contact",
      style = "display: inline"
    )
  ),
  tags$ul(
    class = "dropdown-menu",
    tags$li(
      "Elon Musk",
      style = "padding: 3px 20px;"
    ),
    tags$li(
      a(
        icon("envelope"),
        href = "mailto:elon.musk@tychobra.com",
        "elon.musk@tychobra.com"
      )
    ),
    tags$li(
      a(
        icon("phone"),
        href = "#",
        "555-555-5555"
      )
    )
  )
)
