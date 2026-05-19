terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "1.3.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.110.0"
    }
  }
  required_version = ">=1.0.0"

  //Todo change to customers storage
  backend "local" {
    path = "./terraform-development.tfstate"
  }
}

provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.client_id
  client_secret = var.client_secret
  debug         = true
}
