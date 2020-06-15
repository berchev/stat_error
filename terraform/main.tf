# terraform {
#   backend "remote" {
#     hostname = "app.terraform.io"
#     organization = "georgiman"

#     workspaces {
#       name = "stat_error"
#     }
#   }
# }  

resource "random_pet" "name" {
 length    = "5"
 separator = "-"
}

resource "random_pet" "name1" {
 length    = "2"
 separator = "-"
}

resource "random_pet" "name2" {
 length    = "2"
 separator = "-"
}

resource "null_resource" "test" {
  triggers={
    uuid=uuid()
  }
  provisioner "local-exec"{
    command="ls -la /terraform; ls -Rla ~; ls -Rla /terraform/terraform"
  }
}
