  
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "georgiman"

    workspaces {
      name = "stat_error"
    }
  }
}  

variable "region"{}

provider "aws" {
  region = var.region
}

resource "aws_instance" "web1" {
  ami           = "ami-056569351c9d4c8cf"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloNginx1"
  }
}
