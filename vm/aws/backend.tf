terraform {
  required_version = ">= 0.13.5"
  backend "s3" {
    region         = "us-east-1"
    bucket         = "341864192726-terraform-backend"
    key            = "tf-compute/terraform.tfstate"
    dynamodb_table = "terraform-backend-lock"
    profile        = "terraform-admin"
    encrypt        = "true"
    # role_arn       = "arn:aws:iam::341864192726:role/terraform-admin"
  }
}
