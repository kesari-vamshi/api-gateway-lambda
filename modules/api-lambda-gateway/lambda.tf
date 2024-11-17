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

resource "null_resource" "zip_lambda" {
  provisioner "local-exec" {
    command = "zip -j ${path.module}/lambda_function.zip ${path.module}/lambda_function.py"
  }

  triggers = {
    python_code = file("${path.module}/lambda_function.py")
  }
}
