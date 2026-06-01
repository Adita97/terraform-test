resource "auth0_email_provider" "smtp_microsoft" {
  default_from_address = "test@example.com"
  name                 = "smtp"
  enabled              = true
  credentials {
    smtp_host = ""
    smtp_port = 198
    smtp_user = var.SMTP_USER
    smtp_pass = var.SMTP_PASS

  }
}

resource "auth0_email_template" "verification_email" {
  template                = "verify_email"
  body                    = file("${path.module}/../assets/email-templates/verification-email.html")
  from                    = ""
  result_url              = ""
  subject                 = ""
  syntax                  = "liquid"
  url_lifetime_in_seconds = 3600
  enabled                 = true
}
