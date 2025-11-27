resource "aws_instance" "demo_server"{
    ami = var.my_ami
    instance_type = var.my_instance_type
    key_name = var.key_name
    vpc_security_group_ids = var.my_security_group
    tags = {
      Name = "MyAppServer"
    }
}