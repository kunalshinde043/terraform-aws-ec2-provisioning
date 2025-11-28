resource "aws_instance" "name" {
  ami = data.aws_ami.ubuntu.id
  instance_type =  "t2.micro"
}

#To fetch data from aws ,which terraform has not created.
data "aws_ami" "ubuntu" {
    most_recent = true

    owners = ["amazon"]
    filter {
      name = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-lunar-23.04-arm64-server-20231206"]
    }
}