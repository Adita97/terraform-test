resource "auth0_client" "dummy_client" {
  name                                = "Dummy App"
  app_type                            = "regular_web"
  is_first_party                      = true
  is_token_endpoint_ip_header_trusted = false
  cross_origin_auth                   = false
  callbacks                           = var.dummy_app_callbacks
  web_origins                         = []
  allowed_clients                     = []
  allowed_logout_urls                 = var.dummy_app_allowed_logout_urls
  allowed_origins                     = []
  grant_types = [
    "authorization_code"
  ]
  oidc_conformant = true
}
resource "auth0_client" "deployment_m2m" {
  name     = "Deployment_M2M"
  app_type = "non_interactive"
}

# Import the deployment APP here
import {
  to = auth0_client.deployment_m2m
  id = "DaABgv7eDYhvJ8rmFwWqLU11WtDTzPqt"

}


