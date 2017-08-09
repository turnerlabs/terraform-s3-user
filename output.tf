output "user_arn" {
  value = "${aws_iam_user.user.arn}"
}

output "user_name" {
  value = "${aws_iam_user.user.name}"
}

output "bucket_arn" {
  value = "${aws_s3_bucket.bucket.arn}"
}

output "bucket_name" {
  value = "${aws_s3_bucket.bucket.id}"
}

output "iam_access_key_id" {
  value = "${aws_iam_access_key.user_keys.id}"
}

output "iam_access_key_secret" {
  value = "${aws_iam_access_key.user_keys.secret}"
}
