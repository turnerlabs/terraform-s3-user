### terraform-s3-user


A Terraform module that creates a tagged S3 bucket and an IAM user/key with access to the bucket


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bucket_name | name of the bucket | string | - | yes |
| tag_application | application | string | - | yes |
| tag_contact-email | contact-email | string | - | yes |
| tag_customer | customer | string | - | yes |
| tag_environment | environment | string | - | yes |
| tag_team | team | string | - | yes |
| versioning | enable versioning | string | `false` | no |
| multipart_delete | enable incomplete multipart upload deletion | string | `true` | no |
| multipart_days | incomplete multipart upload deletion days | string | `3` | no |

## Outputs

| Name | Description |
|------|-------------|
| bucket_arn | the arn of the bucket that was created |
| bucket_name | the name of the bucket |
| iam_access_key_id | the access key |
| iam_access_key_secret | the access key secret |
| user_arn | the arn of the user that was created |
| user_name | the name of the service account user that was created |



### usage example

```hcl
provider "aws" {
  region  = "us-east-1"
  profile = "digital-sandbox"
}

module "s3_user" {
  source = "github.com/turnerlabs/terraform-s3-user?ref=v2.1"

  bucket_name = "my-bucket"

  tag_team          = "my-team"
  tag_contact-email = "my-team@turner.com"
  tag_application   = "my-app"
  tag_environment   = "dev"
  tag_customer      = "my-customer"
}
```

```
terraform init
terraform plan
terraform apply
terraform output -module s3_user
```
