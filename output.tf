output "lambda_function_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.api_lambda.function_name
}

output "api_gateway_url" {
  description = "URL of the API Gateway"
  value       = aws_api_gateway_deployment.deployment.invoke_url
}

output "custom_domain_name" {
  description = "Custom domain name associated with the API Gateway"
  value       = aws_api_gateway_domain_name.custom_domain.domain_name
}
