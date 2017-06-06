### terraform-s3-user

A Terraform module that creates a tagged S3 bucket and an IAM user/key with access to the bucket.

### usage

```terraform
provider "aws" {
  region  = "us-east-1"
  profile = "digital-sandbox"
}

module "s3-user" {
  source = "github.com/turnerlabs/terraform-s3-user?ref=v1.4"

  bucket_name = "my-bucket"
  user_name   = "srv_dev_my-bucket"
  versioning  = true

  tag_team          = "my-team"
  tag_contact-email = "my-team@turner.com"
  tag_application   = "my-app"
  tag_environment   = "dev"
  tag_customer      = "my-customer"
}
```

### outputs

- `user_arn` - user's ARN
- `bucket_arn` - bucket's ARN
- `iam_access_key_id` - IAM access key
- `iam_access_key_secret` - IAM access secret
