generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
      terraform {
        backend "s3" {
        bucket         = "dev-state-management"
        key            = "project_dev/${path_relative_to_include()}/terraform.tfstate"
        region         = "ap-southeast-1"
        dynamodb_table = "dev-state-management"
        acl            = "bucket-owner-full-control"
      }
    }
  EOF   
}