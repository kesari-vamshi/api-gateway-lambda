variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_file" {
  description = "Location of the Lambda file"
  type        = string
}

variable "lambda_handler" {
  description = "Handler of the Lambda function"
  type        = string
}

variable "lambda_runtime" {
  description = "Runtime for the Lambda function"
  type        = string
}

variable "lambda_env_vars" {
  description = "Environment variables for the Lambda function"
  type        = map(string)
  default     = {}
}

# API Gateway
variable "api_gateway_name" {
  description = "Name of the API Gateway"
  type        = string
}

variable "allowed_api_http_methods" {
  description = "Allowed HTTP methods for API Gateway"
  type        = string
}