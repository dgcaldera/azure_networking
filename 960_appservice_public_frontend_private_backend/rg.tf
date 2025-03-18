resource "azurerm_resource_group" "rg" {
  name     = "rg-appservice-public-front-private-back-${var.prefix}"
  location = "swedencentral"
}