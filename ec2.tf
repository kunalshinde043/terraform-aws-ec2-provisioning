provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web_server" {
    ami = "ami-0fa3fe0fa7920f68e"
    instance_type = "t3.micro" 
    key_name = "global_key_v2"
    for_each = toset(["DB-Server","Backend-Server","Bastion host" ])
    tags = {
        Name = each.key
    } 
    vpc_security_group_ids = [ 
      "sg-0298b15c9f398fc94"
     ]
}