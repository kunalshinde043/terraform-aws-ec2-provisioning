resource "aws_instance" "my-web" {
  ami = "ami-0fa3fe0fa7920f68e"
  instance_type = "t3.micro"
  key_name = "global_key_v2" # public-key
  vpc_security_group_ids = ["sg-0298b15c9f398fc94"]

  provisioner "file" {
    source = "index.html"
    destination = "/tmp/index.html"
  }

  provisioner "remote-exec" {
    inline = [ 
      "sudo yum install -y httpd",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "sudo mv /tmp/index.html /var/www/html/index.html",
      "sudo systemctl restart httpd"
     ]
  }
  connection {
    host = self.public_ip
    type = "ssh"
    user = "ec2-user"
    private_key = file("E:/global_key_v2.pem")
  }


  tags = {
    Name = "webserver"
  }
}