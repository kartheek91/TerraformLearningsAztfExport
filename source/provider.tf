provider "azurerm" {
  features {
  }
  subscription_id            = "dfbccd65-4e2b-4923-8ad1-2de63fdb2c3a"
  environment                = "public"
  use_msi                    = false
  use_cli                    = true
  use_oidc                   = false
  skip_provider_registration = true
}
