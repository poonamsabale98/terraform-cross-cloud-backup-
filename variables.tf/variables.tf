# AWS settings
variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "s3_bucket_name" {
  description = "Name of the existing S3 bucket to back up"
  type        = string
}

# Azure settings
variable "azure_subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "azure_tenant_id" {
  description = "Azure tenant ID"
  type        = string
}

variable "azure_location" {
  description = "Azure region where resources will be created"
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
