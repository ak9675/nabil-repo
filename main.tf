provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "tfrg2"
  location = "eastus"
}

resource "azurerm_resource_group" "example1" {
  name     = "tfrg3"
  location = "westus"
}

resource "azurerm_public_ip" "example" {
  name                = "tfpip"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
