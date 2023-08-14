module "rg" {
  source   = "./modules/resourceGroup"
  rg-name  = var.rg-name
  location = var.location
}

module "network" {
  source                        = "./modules/network"
  rg-name                       = var.rg-name
  location                      = var.location
  vnet-name                     = var.vnet-name
  subnet-name                   = var.subnet-name
  nic-name                      = var.nic-name
  ip-config-name                = var.ip-config-name
  address_space                 = var.address_space
  address_prefixes              = var.address_prefixes
  private_ip_address_allocation = var.private_ip_address_allocation
}

module "vm" {
  source                           = "./modules/virtualMachine"
  rg-name                          = var.rg-name
  location                         = var.location
  vm-name                          = var.vm-name
  vm-size                          = var.vm-size
  hostname                         = var.hostname
  admin_username                   = var.admin_username
  admin_password                   = var.admin_password
  disk-size                        = var.disk-size
  delete_data_disks_on_termination = var.delete_data_disks_on_termination
  delete_os_disk_on_termination    = var.delete_os_disk_on_termination
  disable_password_authentication  = var.disable_password_authentication
  image-offer                      = var.image-offer
  image-publisher                  = var.image-publisher
  image-sku                        = var.image-sku
  image-version                    = var.image-version
  nic-id                           = module.network.nic-id
  os-disk-caching                  = var.os-disk-caching
  os-disk-create_option            = var.os-disk-create_option
  os-disk-managed_disk_type        = var.os-disk-managed_disk_type
  os-disk-name                     = var.os-disk-name
  tag-environment                  = var.tag-environment
}
