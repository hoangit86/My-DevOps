# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
      terraform {
        backend "s3" {
        bucket         = "dev-state-management"
        key            = "project_dev/./terraform.tfstate"
        region         = "ap-southeast-1"
        dynamodb_table = "dev-state-management"
        acl            = "bucket-owner-full-control"
      }
    }
