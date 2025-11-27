#To make changes in existing ec2 with terraform you should first import that resource.

#I have used this command to import my ec2 .

#  Why do we need to import?
#=>As tfstate file doesnt have idea about resources that tf has not created so we have to first include it in our tfstate file.

#Command :- terraform import aws_instance.<instance-name> <instance-id>

resource "aws_instance" "test" {
    ami = "ami-0fa3fe0fa7920f68e"
    
    instance_type = "t3.micro" 
    key_name = "global_key"

    vpc_security_group_ids = [aws_security_group.tf-my-sg.id]
}

resource "aws_security_group" "tf-my-sg" {
    name = "tf-my-sg"

    ingress {
        description = "Allow ssh"
        to_port = 22
        from_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "Allow http"
        to_port = 80
        from_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "All all"
        to_port = 0
        from_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

    lifecycle {
      create_before_destroy = true
    }
  
}