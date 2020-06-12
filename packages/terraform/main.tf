  
# terraform {
#   backend "remote" {
#     hostname = "app.terraform.io"
#     organization = "georgiman"

#     workspaces {
#       name = "stat_error"
#     }
#   }
# }  

variable "region"{}

provider "aws" {
  region = var.region
}

resource "aws_instance" "web1" {
  ami           = "ami-056569351c9d4c8cf"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloNginx11"
  }
}

# resource "aws_instance" "web2" {
#    ami           = "ami-056569351c9d4c8cf"
#    instance_type = "t2.micro"
#
#    tags = {
#     Name = "HelloNginx2"
#    }
# }


resource "null_resource" "test" {
  triggers={
    uuid=uuid()
  }
  provisioner "local-exec"{
    command="ls -la /terraform; ls -Rla ~; ls -Rla /terraform/packages/terraform"
  }
}
