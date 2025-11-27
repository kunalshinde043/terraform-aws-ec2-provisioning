#PRIORITY
#   variables.tf > variables.tfvars
#   variables.tf < variables.auto.tfvars

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

#Map variable

#In map , we use key as reference for variables.
#Eg:- (az1)key = (us-east-1a)value
variable "az_map" {
  type = map
  default = {
    az1 = "us-east-1a"
    az2 = "us-east-1b"
    }
}

#List variable

#In list , we use key as reference for variables.
#Eg:- (0)index = (us-east-1a)value
variable "az_list" {

  type = list
  default = [
    "us-east-1a",
    "us-east-1b"
  ]
}