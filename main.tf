# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.39.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "81d74218-6f1e-4599-9ff5-eee7b8bbf6e0"      #"00000000-0000-0000-0000-000000000000"
  #tenant_id       = "11111111-1111-1111-1111-111111111111"
}



resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
