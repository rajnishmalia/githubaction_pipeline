terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
  # backend "azurerm" {
  #   storage_account_name = "infrastg19881"
  #   resource_group_name = "Infra"
  #   container_name = "tfstateinfra"
  #   key = infra.tfstate
    
  # }

}

provider "azurerm" {
 features{}
 subscription_id = "3be29ba2-b31c-4fbd-a7bb-c51bf50ef740"
}
resource "azurerm_resource_group" "example1" {
  name     = "example11988"
  location = "West Europe"
}

resource "azurerm_resource_group" "example" {
  name     = "example1988"
  location = "West Europe"
}
resource "azurerm_storage_account" "example" {
  name                     = "stgacc02092025"
  resource_group_name      = "example1988"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  depends_on = [azurerm_resource_group.example]

  
}

