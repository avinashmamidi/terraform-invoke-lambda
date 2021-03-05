
provider "aws" {
  region = "us-west-2"
}

data "aws_lambda_invocation" "example" {
  function_name = "delete"

  input = jsonencode({
    instance_id = var.key1
  })
}
output "result_entry" {
  value = jsondecode(data.aws_lambda_invocation.example.result)["instance_id"]
}

variable "key1" {
  default = "val1"
}