

resource "aws_instance" "Backend-Server" {
  ami = var.my_ami

  availability_zone = var.az_map["az1"]
  instance_type = var.my_instance_type
  vpc_security_group_ids = var.my_security_group
  tags = {
      Name = "Backend-Server"
    }
}
resource "aws_instance" "Frontend-Server" {
  ami = var.my_ami
  availability_zone = var.az_list[1]
  instance_type = var.my_instance_type
  vpc_security_group_ids = var.my_security_group
  tags = {
      Name = "Frontend-Server"
    }
}