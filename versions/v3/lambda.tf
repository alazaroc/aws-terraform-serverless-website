# # These files are required if you want to enable a lambda-edge in your CloudFront distribution

# resource "aws_iam_role" "lambda_edge_role" {
#   name               = "lambda-edge-role"
#   assume_role_policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Sid": "",
#       "Effect": "Allow",
#       "Principal": {
#         "Service": [
#           "lambda.amazonaws.com",
#           "edgelambda.amazonaws.com"
#         ]
#       },
#       "Action": "sts:AssumeRole"
#     }
#   ]
# }
# EOF
# }

# resource "aws_lambda_function" "edge_lambda" {
#   provider         = aws.use_default_region
#   function_name    = "blog-web-edge"
#   filename         = "lambda-edge.zip"
#   handler          = "index.handler"
#   runtime          = "nodejs18.x"
#   source_code_hash = data.archive_file.lambda_zip.output_base64sha256
#   publish          = "true" // In order to make Terraform create a new version of your function
#   #   source_code_hash = filebase64sha256("lambda-edge.zip")
#   role = aws_iam_role.lambda_edge_role.arn
# }

# data "archive_file" "lambda_zip" {
#   type        = "zip"
#   source_dir  = "./lambda-edge/"
#   output_path = "lambda-edge.zip"
#   #   source_file = "lambda-edge/index.js"
# }
