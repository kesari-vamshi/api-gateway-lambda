terragrunt.hcl

terraform {
  source = "../modules/api-lambda-gateway"  # Path to the folder/module
}

inputs = {
  lambda_function_name   = "my-api-lambda"
  lambda_runtime         = "nodejs18.x"
  lambda_handler         = "index.handler"
  lambda_file            = "/path/to/lambda.zip"
  lambda_env_vars        = {
    ENV_VAR_1 = "value1"
    ENV_VAR_2 = "value2"
  }
  api_gateway_name       = "my-api-gateway"
  allowed_api_http_methods = "ANY"
  custom_domain          = "api.example.com"
  certificate_arn        = "arn:aws:acm:region:account:certificate/certificate-id"
  route53_zone_id        = "Z3P5QSUBK4POTI"  # Replace with actual Route 53 Hosted Zone ID
  web_acl_arn            = "arn:aws:wafv2:us-east-1:123456789012:regional/webacl/WebACLName"  # Replace with actual WAF ARN
}