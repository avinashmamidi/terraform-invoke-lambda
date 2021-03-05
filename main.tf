
provider "aws" {
  region = "us-west-2"
}

data "aws_lambda_invocation" "example" {
  function_name = "delete"

  input = jsonencode({
    key1 = var.key1
    key2 = var.key2

  })
}
output "result_entry" {
  value = jsondecode(data.aws_lambda_invocation.example.result)["key1"]
}

variable "key1" {
  default = "val1"
}

variable "key2" {
  default = "val2"
}