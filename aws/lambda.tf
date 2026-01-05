resource "aws_lambda_function" "backup" {
  function_name = "s3-to-azure-backup"
  role          = aws_iam_role.lambda_role.arn
  handler       = "lambda_handler.lambda_handler"
  runtime       = "python3.9"
  filename      = "${path.module}/../scripts/lambda_handler.zip"

  environment {
    variables = {
      S3_BUCKET = var.s3_bucket_name
      AZURE_URL = "https://${azurerm_storage_account.sa.name}.blob.core.windows.net/${azurerm_storage_container.backup.name}"
    }
  }
}
