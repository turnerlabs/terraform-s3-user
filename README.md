### terraform-s3-user

A Terraform module that creates a tagged S3 bucket and an IAM user/key with access to the bucket.

### usage

```terraform
provider "aws" {
  region  = "us-east-1"
  profile = "digital-sandbox"
}

module "s3_user" {
  source = "github.com/turnerlabs/terraform-s3-user?ref=v2.0"

  bucket_name = "my-bucket"

  tag_team          = "my-team"
  tag_contact-email = "my-team@turner.com"
  tag_application   = "my-app"
  tag_environment   = "dev"
  tag_customer      = "my-customer"
}
```

### outputs

- `bucket_arn` - bucket's ARN
- `bucket_name` - bucket's name
- `user_arn` - user's ARN
- `user_name` - user's name
- `iam_access_key_id` - IAM access key
- `iam_access_key_secret` - IAM access secret


view output

```
$ terraform output -module s3_user
```
