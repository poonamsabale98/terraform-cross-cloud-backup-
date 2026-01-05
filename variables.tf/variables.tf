# AWS settings
variable "aws_region" {
  description = "ap-southeast-2"
  type        = string
}

variable "s3_bucket_name" {
  description = "my_aws_bucket"
  type        = string
}

# Azure settings
variable "azure_subscription_id" {
  description = "7aed63a1-1902-416f-9a09-820744c8b99e"
  type        = string
}

variable "azure_tenant_id" {
  description = "f3d79d4d-8616-4a4d-b041-91d3c5d4d882"
  type        = string
}

variable "azure_location" {
  description = "ACentral India"
  type        = string 
  }

variable "azure_rg_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "azure_sa_name" {
  description = "Name of the Azure Storage Account (must be unique, lowercase)"
  type        = string
}

variable "azure_container_name" {
  description = "Name of the Azure Blob container"
  type        = string
}
