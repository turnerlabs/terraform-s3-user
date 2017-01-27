output "user_arn" {
  value = "${aws_iam_user.user.arn}"
}

output "bucket_arn" {
  value = "${aws_s3_bucket.bucket.arn}"
}

output "iam_access_key_id" {
  value = "${aws_iam_access_key.user_keys.id}"
}

output "iam_access_key_secret" {
  value = "${aws_iam_access_key.user_keys.secret}"
}
