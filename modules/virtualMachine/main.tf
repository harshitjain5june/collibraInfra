# Deploying RedHat linux VM

resource "azurerm_virtual_machine" "main" {
  name                  = var.vm-name
  location              = var.location
  resource_group_name   = var.rg-name
  network_interface_ids = [var.nic-id]
  vm_size               = var.vm-size

  delete_os_disk_on_termination    = var.delete_os_disk_on_termination
  delete_data_disks_on_termination = var.delete_data_disks_on_termination

  storage_image_reference {
    publisher = var.image-publisher
    offer     = var.image-offer
    sku       = var.image-sku
    version   = var.image-version
  }
  storage_os_disk {
    name              = var.os-disk-name
    disk_size_gb      = var.disk-size
    caching           = var.os-disk-caching
    create_option     = var.os-disk-create_option
    managed_disk_type = var.os-disk-managed_disk_type
  }
  os_profile {
    computer_name  = var.hostname
    admin_username = var.admin_username
    admin_password = var.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = var.disable_password_authentication
  }
  tags = {
    environment = var.tag-environment
  }
}
