################
#S3 resources 
################

resource "aws_s3_bucket" "mywebsite_react" {
  bucket        = "${local.prefix}-app"
  acl           = "public-read"
  force_destroy = true
  policy        = <<EOF
  {
      "Version" = "2012-10-17",
      "Statement" = [
      {
        "Sid"       = "IPAllow"
        "Effect"    = "Deny"
        "Principal" = "*"
        "Action"    = "s3:GetObject"
        "Resource"  = "arn:aws:s3:::${local.prefix}-app/*"
      }
    ]
  }
  EOF

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  versioning {
    enabled = true
  }

  tags = local.common_tags
}