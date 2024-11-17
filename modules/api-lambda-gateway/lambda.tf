# Lambda Function
resource "aws_lambda_function" "api_lambda" {
  function_name    = var.lambda_function_name
  runtime          = var.lambda_runtime
  handler          = "lambda_function.lambda_handler"
  role             = aws_iam_role.lambda_exec.arn
  filename         = "${path.module}/lambda_function.zip"
  source_code_hash = filebase64sha256("${path.module}/lambda_function.zip")

  environment {
    variables = var.lambda_env_vars
  }
}

# Lambda Permission for API Gateway
resource "aws_lambda_permission" "api_gateway_invoke" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.api_lambda.arn
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.rest_api.execution_arn}/*/*"
}
