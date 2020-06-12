terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "georgiman"

    workspaces {
      name = "stat_error"
    }
  }
}  

resource "random_pet" "name" {
 length    = "8"
 separator = "-"
}
