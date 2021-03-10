variable "name" {
  description = "Name of the Azure Storage Account"
  type        = string

  validation {
    condition     = can(regex("^st[0-9a-z]{1,22}", var.name))
    error_message = "The name value must be a global unique name, 3-24 length, only lowercase and numbers, starting with \"st\"."
  }
}

variable "account_tier" {
  description = "Storage Account tier"
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Standard", "Premium"], var.account_tier)
    error_message = "The account_tier value must be Standard or Premium."
  }
}

variable "account_replication_type" {
  description = "Storage Account type"
  type        = string
  default     = "LRS"

  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"], var.account_replication_type)
    error_message = "The account_replication_type value must be one of 'LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS'."
  }
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "location" {
  description = "Location for resources"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "Tags for Azure Storage Account"
  type        = map(string)
  default     = { tagname = "tagvalue" }
}