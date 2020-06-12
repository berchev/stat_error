  
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "georgiman"

    workspaces {
      name = "stat_error"
    }
  }
}  

resource "random_pet" "name2" {
 length    = "18"
 separator = "-"
}

resource "random_pet" "name3" {
 length    = "18"
 separator = "-"
}

resource "random_pet" "name4" {
 length    = "2"
 separator = "-"
}
