# we need a service account user
resource "aws_iam_user" "user" {
  name = "${var.user_name}"
}

# generate keys for service account user
resource "aws_iam_access_key" "user_keys" {
  user = "${aws_iam_user.user.name}"
}

# create an s3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket        = "${var.bucket_name}"
  force_destroy = "true"

  tags {
    team          = "${var.tag_team}"
    application   = "${var.tag_application}"
    environment   = "${var.tag_environment}"
    contact-email = "${var.tag_contact-email}"
    customer      = "${var.tag_customer}"
  }
}

# add a user policy that grants service account user access to the s3 bucket
resource "aws_iam_user_policy" "s3" {
  name = "${var.bucket_name}"
  user = "${var.user_name}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:*"
      ],
      "Resource": [
        "${aws_s3_bucket.bucket.arn}", 
        "${aws_s3_bucket.bucket.arn}/*"
      ]
    }
  ]
}
EOF
}
