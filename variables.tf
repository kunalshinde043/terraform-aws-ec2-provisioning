variable "my_ami" {
  default = "ami-0fa3fe0fa7920f68e"
}

variable "my_instance_type" {
  default = "t3.micro"
}

variable "my_security_group" {
  default = ["sg-0298b15c9f398fc94"]
}

variable "key_name" {
  default = "global_key_v2"
}