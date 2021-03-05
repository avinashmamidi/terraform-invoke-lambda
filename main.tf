
provider "aws" {
  region = "us-west-2"
}

data "aws_lambda_invocation" "example" {
  function_name = "delete"

  input = <<JSON
{
  "key1": "value1",
  "key2": "value2"
}
JSON
}

//output "result_entry" {
//  value = jsondecode(data.aws_lambda_invocation.example.result)["key1"]
//}