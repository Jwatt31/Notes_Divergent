
variable "business_division" {
  description = "Name of the business division"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, test, prod)"
  type        = string

}

variable "resource_group_name" {
  type        = string
}

variable "resource_group_location" {
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = string 
  }
variable "web_subnet_name" {
  description = "Name of the web subnet"
  type        = string
}

variable "web_subnet_address" {
  description = "Address space for the web subnet"
  type        = string
}
variable "app_subnet_name" {
  description = "Name of the web subnet"
  type        = string
}

variable "app_subnet_address" {
  description = "Name of the web subnet"
  type        = string
}


variable "db_subnet_name" {
  description = "Name of the web subnet"
  type        = string
}

variable "db_subnet_address" {
  description = "Name of the web subnet"
  type        = string
}

variable "bastion_subnet_name" {
  description = "Name of the web subnet"
  type        = string
}

variable "bastion_subnet_address" {
  description = "Name of the web subnet"
  type        = string
}