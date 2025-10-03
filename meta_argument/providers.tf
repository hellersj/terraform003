terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.114.0"
    }
  }
}

provider "azurerm" {
  features {

  }
  subscription_id = "3c686e8e-b47e-456a-905d-d226cf5cb45e"
}