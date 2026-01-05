# terraform-cross-cloud-backup-
AWS S3 to Azure Blob via Terraform

Overview

Automate cross‑cloud backup so that data from an existing AWS S3 bucket is regularly copied into Azure Blob Storage, using Terraform for infrastructure provisioning for every 4 hrs.

Architecture

Source: Existing AWS S3 bucket (read-only)

Compute: AWS Lambda function (Python handler)

Scheduler: AWS EventBridge rule (e.g., every 4 hours)

Destination: Azure Blob Storage (private container in a Storage Account)

Orchestration: Terraform-managed multi-cloud infrastructure

Hosting: All scripts and Terraform modules stored in a GitHub repository and executed on an instance with Terraform
