# terraform-cross-cloud-backup-
## AWS S3 to Azure Blob via Terraform

## Overview

Automate cross‑cloud backup so that data from an existing AWS S3 bucket is regularly copied into Azure Blob Storage, using Terraform for infrastructure provisioning for every 4 hrs.

## Architecture

Source: Existing AWS S3 bucket (read-only)

Compute: AWS Lambda function (Python handler)

Scheduler: AWS EventBridge rule (e.g., every 4 hours)

Destination: Azure Blob Storage (private container in a Storage Account)

Orchestration: Terraform-managed multi-cloud infrastructure

Hosting: All scripts and Terraform modules stored in a GitHub repository and executed on an instance with Terraform

## AWS Setup

**1)IAM Role & Policy :**
Created IAM role for Lambda with trust policy for lambda.amazonaws.com.
Attached a custom IAM policy granting read‑only access to the existing S3 bucket (s3:ListBucket, s3:GetObject).

# 2)Lambda Function: 
Wrote lambda_handler.py in Python to: Sync data from S3 to a temporary /tmp directory.
                                      Upload data to Azure Blob using azcopy or Azure SDK.

# 3)EventBridge Rule:
Configured an EventBridge rule with rate(4 hours) expression.
Attached Lambda as the target.
Added permission for EventBridge to invoke Lambda.

## Azure Setup

# 1)Resource Group:
Provisioned a new Resource Group using Terraform.

# 2)Storage Account:
Created a Storage Account with:Standard tier
                               LRS replication
                               HTTPS‑only enforced
                               Encryption at rest enabled

# 3)Blob Container:
Created a private Blob container for backups.

# 4)SAS Token :
Configured SAS token generation for secure uploads if required.

## Terraform Setup

# 1)Providers :
Configured AWS and Azure providers in providers.tf.
Used variables for region, subscription ID, tenant ID, etc.

# 2)Variables :
Declared all variables in variables.tf.

# 3)Outputs :
Exposed Azure Blob container URL for verification.

# 4)Execution :
terraform init

terraform plan

terraform apply.





