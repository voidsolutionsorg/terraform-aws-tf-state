locals {
  # The name of the S3 bucket to store the Terraform state file
  bucket_name = "${var.project_name}-tf-state"

  # The name of the DynamoDB table to lock the Terraform state file
  table_name = "${var.project_name}-tf-state-lock"
}
