variable "resource_group_name" {
  description = "Name of the Azure resource grouop"
  type        = string
  default     = ""
}

variable "location" {
  description = "Region or location of the resource group and VNet. NOTE: VNet and Subnets must be in the same Location and Resource Group."
  type        = string
}

variable "namespace" {
  description = "Namespace to be used for the resources created"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the Vnet to be created. List of IP Ranges"
  type        = list(string)
  default     = ["10.11.0.0/16"]
}

variable "environment" {
  description = "Environment name to be used for the resources created. For example, sandbox, nonprod or prod"
  type        = string
}

variable "global_tags" {
  description = "Map of tags to be added to the resources"
  type        = map(string)
}
