variable "rg-name" {
  type = string
}

variable "location" {
  type = string
}

variable "vm-name" {
  type = string
}

variable "nic-id" {
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