resource "auth0_prompt_custom_text" "login_en" {
  language = "en"
  prompt   = "login"
  body = jsonencode(
    {
      "login" : {
        "title" : "Welcome",
      }
  })
}
resource "auth0_prompt_custom_text" "login_de" {
  language = "de"
  prompt   = "login"
  body = jsonencode(
    {
      "login" : {
        "title" : "Willkommen",
      }
  })
}
