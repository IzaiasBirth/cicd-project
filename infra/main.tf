
provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "cicd_repo" {
  name = "cicd-project"
}

