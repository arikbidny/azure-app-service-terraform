provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.23.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "mtc-tfstates"
    storage_account_name = "mtctfstates"
    container_name       = "terraformstate"
    key                  = "terraformstate.tfstate"
  }
}