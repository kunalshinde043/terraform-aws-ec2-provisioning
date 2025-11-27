resource "aws_instance" "Bastion-Server" {
  ami = var.my_ami
  availability_zone = var.az_list[1]
  instance_type = var.my_instance_type
  vpc_security_group_ids = var.my_security_group

#User data format and sample.

  user_data = <<-EOF
                #!/bin/bash
                sudo yum update
                sudo yum install httpd nginx php -y
                echo "Completed execution"
                EOF

  tags = {
      Name = "Frontend-Server"
    }
}

#To print values as output on CLI.

output "Instance_details" {
  value = aws_instance.Bastion-Server.private_ip
}
