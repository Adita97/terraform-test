resource "auth0_custom_domain" "custom_domain" {
  domain      = var.auth0_custom_domain
  type        = "auth0_managed_certs"
  tls_policy  = "recommended"
}