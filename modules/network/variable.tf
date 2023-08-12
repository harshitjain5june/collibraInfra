variable "vnet-name" {
  type = string
}

variable "rg-name" {
  type = string
}

variable "location" {
  type = string
}

variable "subnet-name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "address_prefixes" {
  type = list(string)
}

variable "ip-config-name" {
  type = string
}

variable "private_ip_address_allocation" {
  type = string #Dynamic
}

variable "nic-name" {
  type = string
}