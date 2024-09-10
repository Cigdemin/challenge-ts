# Creating EC2 instance to run apache
resource "aws_instance" "apache_instance"{
    ami = data.aws_ami.aws_linux_ami.id
    instance_type = var.instance_type
    key_name      = data.aws_key_pair.keypair.key_name
    vpc_security_group_ids = [aws_security_group.apache_sg.id]
    user_data     = base64encode(data.template_file.user_data.rendered)
    tags = {
        Name = replace(local.name, "resource", "apache-server")
    }
}

output "apache_instance_ip" {
  value = aws_instance.apache_instance.public_ip
}