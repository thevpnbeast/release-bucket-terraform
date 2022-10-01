# AWS S3 Release Bucket Module
[![CI](https://github.com/thevpnbeast/release-bucket-terraform/workflows/CI/badge.svg?event=push)](https://github.com/thevpnbeast/release-bucket-terraform/actions?query=workflow%3ACI)

Terraform module which creates release bucket on S3 and dynamodb lock table if configured. Please see [MODULE.md](MODULE.md) for module documentation.

## Usage
You can use below module configuration in your terraform configuration:
```
module "release-bucket" {
  source                    = "git::https://github.com/thevpnbeast/release-bucket-terraform.git"
  bucket_name               = "thevpnbeast-releases"
  versioning_enabled        = true
  encryption_enabled        = true
  lock_table_enabled        = false
}
```