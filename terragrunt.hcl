terragrunt.hcl

terraform {
  source = "../modules/api-lambda-gateway"  # Path to the folder/module
}

inputs = {
  lambda_function_name   = "my-api-lambda"
  lambda_runtime         = "nodejs18.x"
  lambda_handler         = "index.handler"
  lambda_env_vars        = {
    ENV_VAR_1 = "value1"
    ENV_VAR_2 = "value2"
  }
  api_gateway_name       = "my-api-gateway"
  allowed_api_http_methods = "ANY"

}