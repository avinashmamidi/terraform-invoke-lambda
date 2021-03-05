
provider "aws" {
  region = "us-west-2"
}

data "aws_lambda_invocation" "example" {
  function_name = "delete"

  input = jsonencode({
    one = var.key1
    one = var.key2

  })
}
output "result_entry" {
  value = jsondecode(data.aws_lambda_invocation.example.result)["one"]
}

variable "key1" {
  default = "val1"
}

variable "key2" {
  default = "val2"
}