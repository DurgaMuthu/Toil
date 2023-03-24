terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.33.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  // tenant_id       = var.tenant_id
   // subscription_id = var.subscription_id
  features {}
}