output "nic-id" {
  value = azurerm_network_interface.vm-nic.id
}

output "vnet-name" {
  value = azurerm_virtual_network.collibra-vnet.name
}

output "subnet-id" {
  value = azurerm_subnet.vm-subnet.id
}

