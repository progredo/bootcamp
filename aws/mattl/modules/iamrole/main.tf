resource "aws_iam_role" "test_role_bootcamp_mattl" {
  name = "test_role_bootcamp_mattl"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          "AWS": "arn:aws:iam::471112692916:user/mattl"
        }
      },
    ]
  })

}
