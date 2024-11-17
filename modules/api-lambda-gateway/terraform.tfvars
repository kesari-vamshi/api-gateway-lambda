lambda_function_name = "my_lambda_function"
lambda_file          = "./lambda_function.zip"
lambda_handler       = "lambda_function.lambda_handler"
lambda_runtime       = "python3.9"
lambda_env_vars = {
  ENVIRONMENT = "production"
  LOG_LEVEL   = "info"
}
api_gateway_name         = "my_api_gateway"
allowed_api_http_methods = "ANY"
