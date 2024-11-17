resource "aws_lambda_function" "api_lambda" {
  function_name    = var.lambda_function_name
  runtime          = var.lambda_runtime
  handler          = var.lambda_handler
  role             = aws_iam_role.lambda_exec.arn
  filename         = var.lambda_file
  source_code_hash = filebase64sha256(var.lambda_file)

  environment {
    variables = var.lambda_env_vars
  }
}