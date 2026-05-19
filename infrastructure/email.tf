resource "auth0_email_template" "verification_email" {
  template = "verify_email"
  body = file("${path.module}/../assets/email-templates/verification-email.html")
  from = ""
  result_url = ""
  subject = ""
  syntax = "liquid"
  url_lifetime_in_seconds = 3600
  enabled = true
}