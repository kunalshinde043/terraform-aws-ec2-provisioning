terraform {
  backend "s3" {
    bucket = "terraform-backend-c55-bucket"
    key    = "terraform. tfstate"
    region = "us-east-1" # remote backend
  }
}

resource "aws_instance" "demo_server_fs"{
    ami = var.my_ami
    instance_type = var.my_instance_type
    key_name = var.key_name
    vpc_security_group_ids = var.my_security_group
    tags = {
      Name = "MyAppServer"
    }
}


# Commands for Reading tfstate file

# 1)terraform state pull --> pulls complete tf state file as it is from s3.

# 2)terraform state list --> lists resources inside our tfstate file.

# 3)terraform state show <resource address>aws_instance.demo_server --> shows complete details for specific resource only.

# 4)terraform state mv aws_instance.server_1 aws_instance.main_server --> to update resource level config changes such as logical name of resource

# 5)terraform state rm aws_instance.server_1 --> to remove resouce from tfstate file hence no more tracking would be done(also remove from config file)
