terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "=3.0.0"
    }
  }
  backend "azurerm" {
        resource_group_name  = "terraformlcaodev1-rg"
        storage_account_name = "terraformlcaodev1stg"
        container_name       = "terraform"
        key                  = "Github-action-key-vault.tfstate"
        access_key           = "replace-access-key"
  }
}
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}
