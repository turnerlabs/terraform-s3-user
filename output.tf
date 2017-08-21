//the arn of the user that was created
output "user_arn" {
  value = "${aws_iam_user.user.arn}"
}

//the name of the service account user that was created
output "user_name" {
  value = "${aws_iam_user.user.name}"
}

//the arn of the bucket that was created
output "bucket_arn" {
  value = "${aws_s3_bucket.bucket.arn}"
}

//the name of the bucket
output "bucket_name" {
  value = "${aws_s3_bucket.bucket.id}"
}

//the access key
output "iam_access_key_id" {
  value = "${aws_iam_access_key.user_keys.id}"
}

//the access key secret
output "iam_access_key_secret" {
  value = "${aws_iam_access_key.user_keys.secret}"
}
