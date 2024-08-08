include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::https://github.com/Smartbrood/terraform-aws-s3-bucket.git"
}
inputs = {
    bucket = "project-dev-sts"
    create_bucket = true
}