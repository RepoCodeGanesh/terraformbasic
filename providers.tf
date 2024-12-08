terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id   = "e94bdd49-97a8-440d-bf40-10569cc9409e"
  tenant_id         = "9a998602-7371-4737-98c5-cd71dd4a9e9b"
  client_id         = "1ce6cbf4-1110-4ec8-b98d-80088bde1942"
  client_secret     = ""
}

# Your code goes here

