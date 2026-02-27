resource "aws_instance" "name" {
  ami = data.aws_ami.ubuntu.id
  instance_type =  "t2.micro"
}

#To fetch data from aws ,which terraform has not created.
data "aws_ami" "ubuntu-ami" {
    most_recent = true

    owners = ["099720109477"] # Canonical
    filter {
      name = "name"
      values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
    }
}
