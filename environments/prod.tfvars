# Variables for Production deployment

rg-name                          = "collibra-rg-prod"
location                         = "westus"
vnet-name                        = "collibra-vnet-prod"
ip-config-name                   = "collibra-ip-config-prod"
address_space                    = ["10.1.0.0/16"]
address_prefixes                 = ["10.1.1.0/32"]
private_ip_address_allocation    = "Dynamic"
vm-name                          = "collibra-vm-prod"
vm-size                          = "Standard_B16as_v2"
disk-size                        = 512
delete_os_disk_on_termination    = true
delete_data_disks_on_termination = true
image-publisher                  = "RedHat"
image-offer                      = "RHEL"
image-sku                        = "8-gen2"
image-version                    = "8.8"
os-disk-name                     = "collibra-vm-os-disk-prod"
os-disk-caching                  = "ReadWrite"
os-disk-create_option            = "FromImage"
os-disk-managed_disk_type        = "Standard_LRS"
hostname                         = "collibra-vm-prod"
admin_username                   = "xyzAdmin"
admin_password                   = "xyzAdmin@123"
disable_password_authentication  = false
tag-environment                  = "Staging"