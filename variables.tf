variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
}

variable "storage_name_prefix" {
  description = "Lowercase prefix for the storage account name (3-18 chars)."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,18}$", var.storage_name_prefix))
    error_message = "storage_name_prefix must be 3-18 lowercase alphanumeric characters."
  }
}

variable "account_tier" {
  description = "Storage account tier."
  type        = string
}

variable "account_replication" {
  description = "Storage account replication type."
  type        = string
}

variable "tags" {
  description = "Optional tags for all resources."
  type        = map(string)
  default     = {}
}
