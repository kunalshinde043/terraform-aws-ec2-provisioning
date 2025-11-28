terraform {
  backend "s3" {
    bucket = "terraform-backend-c55-bucket"
    key    = "terraform. tfstate"
    region = "us-east-1" # remote backend
  }
}

resource "aws_instance" "demo_server"{
    ami = var.my_ami
    instance_type = var.my_instance_type
    key_name = var.key_name
    vpc_security_group_ids = var.my_security_group
    tags = {
      Name = "MyAppServer"
    }
}
