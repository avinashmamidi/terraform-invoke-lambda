terraform {
  backend "remote" {
    organization = "avinashmamidi"

    workspaces {
      name = "lambda-invoke"
    }
  }
}