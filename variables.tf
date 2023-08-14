variable "rg-name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet-name" {
  type = string
}

variable "ip-config-name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "address_prefixes" {
  type = list(string)
}

variable "private_ip_address_allocation" {
  type = string
}

variable "vm-name" {
  type = string
}

variable "vm-size" {
  type = string
}

variable "delete_os_disk_on_termination" {
  type = bool
}

variable "delete_data_disks_on_termination" {
  type = bool
}

variable "subnet-name" {
  type = string
}

variable "nic-name" {
  type = string
}

variable "image-publisher" {
  type = string
}

variable "image-offer" {
  type = string
}

variable "image-sku" {
  type = string
}

variable "image-version" {
  type = string
}

variable "os-disk-name" {
  type = string
}

variable "os-disk-caching" {
  type = string
}

variable "os-disk-create_option" {
  type = string
}

variable "os-disk-managed_disk_type" {
  type = string
}

variable "hostname" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
  sensitive = true
}

variable "disable_password_authentication" {
  type = bool
}

variable "tag-environment" {
  type = string
}

variable "disk-size" {
  type = number
}
