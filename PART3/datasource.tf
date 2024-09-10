data "aws_vpc" "default" {
    default = true
}

data "aws_ami" "aws_linux_ami" {
    most_recent = true
    owners = ["amazon"]
    filter {
        name = "name"
        values = ["al2023-ami-2023.5.20240903.0-kernel-6.1-x86_64*"]
    }
}

data "aws_key_pair" "keypair" {
  key_name = "cigdem@hp"
}

data "template_file" "user_data" {
  template = file("userdata.sh")
}
