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
        key                  = "github-action.tfstate"
        access_key           = "TKlU2dE1ZDW4e8JaPGb5ZXxDpaJ0XoITPXegk6HyZdbvonFjSCaG4uCDKhOnQzO8UE73hMA9JKzy+AStwS/CIg=="
  }
}
provider "azurerm" {
  features {}
}
