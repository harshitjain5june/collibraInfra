resource "azurerm_virtual_network" "collibra-vnet" {
  name                = var.vnet-name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.rg-name
}

resource "azurerm_subnet" "vm-subnet" {
  name                 = var.subnet-name
  resource_group_name  = var.rg-name
  virtual_network_name = azurerm_virtual_network.collibra-vnet.name
  address_prefixes     = var.address_prefixes
}

resource "azurerm_network_interface" "vm-nic" {
  name                = var.nic-name
  location            = var.location
  resource_group_name = var.rg-name

  ip_configuration {
    name                          = var.ip-config-name
    subnet_id                     = azurerm_subnet.vm-subnet.id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}
