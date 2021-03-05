terraform {
  backend "remote" {
    organization = "avinashmamidi"

    workspaces {
      name = "terraform-lambda-invoke"
    }
  }
}
/*credentials "app.terraform.io" {
  token = ""
}*/