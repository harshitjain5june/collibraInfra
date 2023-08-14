# Variables for Dev deployment

rg-name                          = "collibra-rg-dev"
location                         = "westus"
vnet-name                        = "collibra-vnet-dev"
ip-config-name                   = "collibra-ip-config-dev"
address_space                    = ["10.1.0.0/16"]
subnet-name                      = "vm-subnet-dev"
nic-name                         = "vm-nic"
address_prefixes                 = ["10.1.1.0/24"]
private_ip_address_allocation    = "Dynamic"
vm-name                          = "collibra-vm-dev"
vm-size                          = "Standard_D2s_v3"
disk-size                        = 512
delete_os_disk_on_termination    = true
delete_data_disks_on_termination = true
image-publisher                  = "RedHat"
image-offer                      = "RHEL"
image-sku                        = "8-gen2"
image-version                    = "latest"
os-disk-name                     = "collibra-vm-os-disk-dev"
os-disk-caching                  = "ReadWrite"
os-disk-create_option            = "FromImage"
os-disk-managed_disk_type        = "Standard_LRS"
hostname                         = "collibra-vm-dev"
admin_username                   = "xyzAdmin"
admin_password                   = "xyzAdmin@123"
disable_password_authentication  = false
tag-environment                  = "Dev"
