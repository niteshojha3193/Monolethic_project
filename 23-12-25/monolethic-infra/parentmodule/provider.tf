terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
  # backend "azurerm" {}

}


provider "azurerm" {
  features {}
  subscription_id = "987e5914-628e-4e9a-8c8f-d7fa87735002"
}

