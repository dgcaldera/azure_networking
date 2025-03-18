resource "azurerm_virtual_network_peering" "peering-hub-to-spoke" {
  name                         = "peering-hub-to-spoke"
  virtual_network_name         = azurerm_virtual_network.vnet-hub.name
  resource_group_name          = azurerm_resource_group.rg-hub.name
  remote_virtual_network_id    = azurerm_virtual_network.vnet-spoke.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  allow_gateway_transit        = false
}

resource "azurerm_virtual_network_peering" "peering-spoke-to-hub" {
  name                         = "peering-spoke-to-hub"
  virtual_network_name         = azurerm_virtual_network.vnet-spoke.name
  resource_group_name          = azurerm_resource_group.rg-spoke.name
  remote_virtual_network_id    = azurerm_virtual_network.vnet-hub.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  allow_gateway_transit        = false
}