provider "aws" {
  region = "us-west-2"


}

#------------------------------------------VAULT
provider "vault" {
  address = "http://54.202.73.190:8200"
  token   = var.vault_token
}


variable "vault_token" {}



#------------------------------------------DATA


data "vault_generic_secret" "aws_static_creds" {
  path = "aws-static/aws-credentials"
}
