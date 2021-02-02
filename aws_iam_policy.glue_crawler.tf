
resource "aws_iam_policy" "glue_crawler" {
  name        = local.name
  description = "Policy for Glue crawler role"
  path        = "/"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject"
            ],
            "Resource": [
                "arn:aws:s3:::${var.s3_target_bucket_name}/*"
            ]
        }
    ]
}
EOF
}


resource "aws_iam_role_policy_attachment" "glue_crawler" {
  role       = aws_iam_role.glue_crawler.name
  policy_arn = aws_iam_policy.glue_crawler.arn
}

resource "aws_iam_role_policy_attachment" "glue_service" {
  role       = aws_iam_role.glue_crawler.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
}
